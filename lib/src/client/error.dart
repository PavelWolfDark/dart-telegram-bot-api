import 'response.dart';

class ApiError implements Exception {
  Response? _response;
  final int code;

  Response? get response {
    return _response;
  }

  ApiError(this.code);

  void withResponse(Response response) {
    _response ??= response;
  }
}
