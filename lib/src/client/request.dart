import 'request_parameters.dart';
import 'response.dart';

class Request {
  // RequestMethod
  final String method;
  final RequestParameters? parameters;

  Request(this.method, [this.parameters]);

  Response respondFromJson(Map<String, dynamic> json) {
    final response = Response.fromJson(json)..withRequest(this);
    return response;
  }
}
