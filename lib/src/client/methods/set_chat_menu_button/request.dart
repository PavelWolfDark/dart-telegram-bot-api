import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatMenuButton extends Request {
  RequestSetChatMenuButton([RequestParametersSetChatMenuButton? parameters])
      : super(RequestMethod.setChatMenuButton, parameters);

  @override
  ResponseSetChatMenuButton respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatMenuButton.fromJson(json)..withRequest(this);
}
