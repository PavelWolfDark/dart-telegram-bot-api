import '../constants/error_code.dart';
import '../models/response_parameters.dart';
import 'errors/bad_request.dart';
import 'errors/forbidden.dart';
import 'errors/not_found.dart';
import 'errors/too_many_requests.dart';
import 'error.dart';
import 'request.dart';

class Response<T> {
  Request? _request;
  ApiError? _error;
  final bool ok;
  final String? description;
  final T? result;
  final int? errorCode;
  final ResponseParameters? parameters;

  Response(
      {required this.ok,
      this.description,
      this.result,
      this.errorCode,
      this.parameters});

  Request? get request {
    return _request;
  }

  ApiError? get error {
    if (ok) {
      return null;
    }
    if (_error == null) {
      switch (errorCode) {
        case ErrorCode.badRequest:
          _error = BadRequestError();
          break;
        case ErrorCode.forbidden:
          _error = ForbiddenError();
          break;
        case ErrorCode.notFound:
          _error = NotFoundError();
          break;
        case ErrorCode.tooManyRequests:
          _error = TooManyRequestsError();
          break;
        default:
          throw TypeError();
      }
    }
    return _error;
  }

  factory Response.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return Response(
        ok: json['ok'],
        description: json['description'],
        result: json['result'],
        errorCode: json['error_code'],
        parameters: parameters);
  }

  void withRequest(Request request) {
    _request ??= request;
  }

  resultOrThrowIfError() {
    if (error == null) {
      return result;
    }
    throw error!..withResponse(this);
  }
}
