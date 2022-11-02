import '../../../models/bot_command.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetMyCommands extends Response<List<BotCommand>> {
  ResponseGetMyCommands(
      {required bool ok,
      String? description,
      List<BotCommand>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetMyCommands.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<BotCommand>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonBotCommand in jsonResult) {
        result.add(BotCommand.fromJson(jsonBotCommand));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetMyCommands(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
