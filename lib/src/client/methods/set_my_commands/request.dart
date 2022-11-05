import '../../../constants/request_method.dart';
import '../../../models/bot_command.dart';
import '../../../models/bot_command_scope.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetMyCommands extends Request {
  RequestSetMyCommands(RequestParametersSetMyCommands parameters)
      : super(RequestMethod.setMyCommands, parameters);

  factory RequestSetMyCommands.create(
      {required List<BotCommand> commands,
      BotCommandScope? scope,
      String? languageCode}) {
    final requestParameters = RequestParametersSetMyCommands(
        commands: commands, scope: scope, languageCode: languageCode);
    return RequestSetMyCommands(requestParameters);
  }

  @override
  ResponseSetMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseSetMyCommands.fromJson(json)..withRequest(this);
}
