import '../../../constants/request_method.dart';
import '../../../models/menu_button.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatMenuButton extends Request {
  RequestSetChatMenuButton([RequestParametersSetChatMenuButton? parameters])
      : super(RequestMethod.setChatMenuButton, parameters);

  factory RequestSetChatMenuButton.create(
      {int? chatId, MenuButton? menuButton}) {
    final requestParameters = RequestParametersSetChatMenuButton(
        chatId: chatId, menuButton: menuButton);
    return RequestSetChatMenuButton(requestParameters);
  }

  @override
  ResponseSetChatMenuButton respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatMenuButton.fromJson(json)..withRequest(this);
}
