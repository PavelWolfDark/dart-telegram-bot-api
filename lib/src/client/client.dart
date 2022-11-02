import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/input_file.dart';
import 'client_api.dart';
import 'error.dart';
import 'response.dart';
import 'request.dart';

class Client {
  static final _telegramApiUrl = Uri.https('api.telegram.org');
  final _httpClient = http.Client();
  final String _token;
  final Uri _baseUrl;
  final void Function(Request)? _onRequest;
  final void Function(Response)? _onResponse;
  final void Function(ApiError)? _onError;
  late final ClientApi api;

  Client(String token,
      {Uri? baseUrl,
      void Function(Request)? onRequest,
      void Function(Response)? onResponse,
      void Function(ApiError)? onError})
      : _token = token,
        _baseUrl = baseUrl ?? Client._telegramApiUrl,
        _onRequest = onRequest,
        _onResponse = onResponse,
        _onError = onError {
    api = ClientApi(this);
  }

  Future<T> send<T>(Request request) async {
    if (_onRequest != null) {
      _onRequest!(request);
    }
    final path = '${_baseUrl.path}/bot$_token/${request.method}';
    final url = _baseUrl.replace(path: path);
    Map<String, dynamic>? json;
    final requestParameters = request.parameters;
    if (requestParameters == null) {
      final httpResponse =
          await _httpClient.post(url, headers: {'Accept': 'applicaton/json'});
      json = jsonDecode(httpResponse.body);
    } else if (requestParameters.hasInputFiles) {
      final multipartRequest = http.MultipartRequest('POST', url)
        ..headers['Accept'] = 'applicaton/json';
      final formData = requestParameters.toFormData();
      final multipartFields = multipartRequest.fields;
      final multipartFiles = multipartRequest.files;
      for (final entry in formData.entries) {
        final field = entry.key;
        final value = entry.value;
        if (value is InputFile) {
          final stream = value.finalize();
          final multipartFile = http.MultipartFile(field, stream, value.length,
              filename: value.filename, contentType: value.contentType);
          multipartFiles.add(multipartFile);
        } else {
          multipartFields[field] = value;
        }
      }
      final streamedResponse = await _httpClient.send(multipartRequest);
      final httpResponse = await http.Response.fromStream(streamedResponse);
      json = jsonDecode(httpResponse.body);
    } else {
      final jsonText = jsonEncode(requestParameters.toJson());
      final httpResponse = await _httpClient.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'applicaton/json'
          },
          body: jsonText);
      json = jsonDecode(httpResponse.body);
    }
    final response = request.respondFromJson(json!);
    if (_onResponse != null) {
      _onResponse!(response);
    }
    final error = response.error;
    if (_onError != null && error != null) {
      error.withResponse(response);
      _onError!(error);
    }
    return response as T;
  }

  void close() {
    _httpClient.close();
  }
}
