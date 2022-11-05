import 'request_parameters.dart';
import 'response.dart';

class Request {
  // RequestMethod
  final String method;
  final RequestParameters? parameters;

  get hasInputFiles => parameters?.hasInputFiles ?? false;

  Request(this.method, [this.parameters]);

  Response respondFromJson(Map<String, dynamic> json) =>
      Response.fromJson(json)..withRequest(this);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = parameters?.toJson() ?? {};
    json['method'] = method;
    return json;
  }

  // Map<String, String | InputFile>
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = parameters?.toFormData() ?? {};
    formData['method'] = method;
    return formData;
  }
}
