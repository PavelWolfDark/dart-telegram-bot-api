import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseSetMyDefaultAdministratorRights extends Response<bool> {
  ResponseSetMyDefaultAdministratorRights(
      {required bool ok,
      String? description,
      bool? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseSetMyDefaultAdministratorRights.fromJson(
      Map<String, dynamic> json) {
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseSetMyDefaultAdministratorRights(
        ok: json['ok'],
        description: json['description'],
        result: json['result'],
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
