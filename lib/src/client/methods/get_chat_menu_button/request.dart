import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatMenuButton extends Request {
  RequestGetChatMenuButton([RequestParametersGetChatMenuButton? parameters])
      : super(RequestMethod.getChatMenuButton, parameters);

  @override
  ResponseGetChatMenuButton respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatMenuButton.fromJson(json)..withRequest(this);
}
