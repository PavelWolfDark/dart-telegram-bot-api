import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatAdministrators extends Request {
  RequestGetChatAdministrators(
      RequestParametersGetChatAdministrators parameters)
      : super(RequestMethod.getChatAdministrators, parameters);

  @override
  ResponseGetChatAdministrators respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatAdministrators.fromJson(json)..withRequest(this);
}
