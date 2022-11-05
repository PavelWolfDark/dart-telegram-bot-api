import '../../../constants/request_method.dart';
import '../../../models/bot_command_scope.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteMyCommands extends Request {
  RequestDeleteMyCommands([RequestParametersDeleteMyCommands? parameters])
      : super(RequestMethod.deleteMyCommands, parameters);

  factory RequestDeleteMyCommands.create(
      {BotCommandScope? scope, String? languageCode}) {
    final requestParameters = RequestParametersDeleteMyCommands(
        scope: scope, languageCode: languageCode);
    return RequestDeleteMyCommands(requestParameters);
  }

  @override
  ResponseDeleteMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteMyCommands.fromJson(json)..withRequest(this);
}
