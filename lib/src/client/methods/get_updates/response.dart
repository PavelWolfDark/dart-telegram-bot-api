import '../../../models/update.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetUpdates extends Response<List<Update>> {
  ResponseGetUpdates(
      {required bool ok,
      String? description,
      List<Update>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetUpdates.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<Update>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonUpdate in jsonResult) {
        result.add(Update.fromJson(jsonUpdate));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetUpdates(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
