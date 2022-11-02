import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatAdministratorCustomTitle extends Request {
  RequestSetChatAdministratorCustomTitle(
      RequestParametersSetChatAdministratorCustomTitle parameters)
      : super(RequestMethod.setChatAdministratorCustomTitle, parameters);

  @override
  ResponseSetChatAdministratorCustomTitle respondFromJson(
          Map<String, dynamic> json) =>
      ResponseSetChatAdministratorCustomTitle.fromJson(json)..withRequest(this);
}
