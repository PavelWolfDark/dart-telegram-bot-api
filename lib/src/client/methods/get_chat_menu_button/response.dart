import '../../../models/menu_button.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetChatMenuButton extends Response<MenuButton> {
  ResponseGetChatMenuButton(
      {required bool ok,
      String? description,
      MenuButton? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetChatMenuButton.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    MenuButton? result;
    if (jsonResult != null) {
      result = MenuButton.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetChatMenuButton(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
