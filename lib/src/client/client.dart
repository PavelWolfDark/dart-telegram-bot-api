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
  final void Function(Request request)? _handleRequest;
  final void Function(Response response)? _handleResponse;
  final void Function(ApiError error)? _handleError;
  late final ClientApi api;

  Client(String token,
      {Uri? baseUrl,
      void Function(Request request)? onRequest,
      void Function(Response response)? onResponse,
      void Function(ApiError error)? onError})
      : _token = token,
        _baseUrl = baseUrl ?? Client._telegramApiUrl,
        _handleRequest = onRequest,
        _handleResponse = onResponse,
        _handleError = onError {
    api = ClientApi(this);
  }

  Future<T> send<T>(Request request) async {
    if (_handleRequest != null) {
      _handleRequest!(request);
    }
    final path = '${_baseUrl.path}/bot$_token/${request.method}';
    final url = _baseUrl.replace(path: path);
    Map<String, dynamic>? json;
    final requestParameters = request.parameters;
    if (requestParameters == null) {
      final httpResponse =
          await _httpClient.post(url, headers: {'accept': 'applicaton/json'});
      json = jsonDecode(httpResponse.body);
    } else if (requestParameters.hasInputFiles) {
      final multipartRequest = http.MultipartRequest('POST', url)
        ..headers['accept'] = 'applicaton/json';
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
            'content-type': 'application/json',
            'accept': 'applicaton/json'
          },
          body: jsonText);
      json = jsonDecode(httpResponse.body);
    }
    final response = request.respondFromJson(json!);
    if (_handleResponse != null) {
      _handleResponse!(response);
    }
    final error = response.error;
    if (_handleError != null && error != null) {
      error.withResponse(response);
      _handleError!(error);
    }
    return response as T;
  }

  void close() {
    _httpClient.close();
  }
}
