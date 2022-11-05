import '../../../constants/request_method.dart';
import '../../../models/bot_command_scope.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetMyCommands extends Request {
  RequestGetMyCommands([RequestParametersGetMyCommands? parameters])
      : super(RequestMethod.getMyCommands, parameters);

  factory RequestGetMyCommands.create(
      {BotCommandScope? scope, String? languageCode}) {
    final requestParameters = RequestParametersGetMyCommands(
        scope: scope, languageCode: languageCode);
    return RequestGetMyCommands(requestParameters);
  }

  @override
  ResponseGetMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseGetMyCommands.fromJson(json)..withRequest(this);
}
