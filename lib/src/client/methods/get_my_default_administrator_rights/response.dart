import '../../../models/chat_administrator_rights.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetMyDefaultAdministratorRights
    extends Response<ChatAdministratorRights> {
  ResponseGetMyDefaultAdministratorRights(
      {required bool ok,
      String? description,
      ChatAdministratorRights? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetMyDefaultAdministratorRights.fromJson(
      Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    ChatAdministratorRights? result;
    if (jsonResult != null) {
      result = ChatAdministratorRights.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetMyDefaultAdministratorRights(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
