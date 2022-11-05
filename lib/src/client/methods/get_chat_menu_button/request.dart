import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatMenuButton extends Request {
  RequestGetChatMenuButton([RequestParametersGetChatMenuButton? parameters])
      : super(RequestMethod.getChatMenuButton, parameters);

  factory RequestGetChatMenuButton.create({int? chatId}) {
    final requestParameters =
        RequestParametersGetChatMenuButton(chatId: chatId);
    return RequestGetChatMenuButton(requestParameters);
  }

  @override
  ResponseGetChatMenuButton respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatMenuButton.fromJson(json)..withRequest(this);
}
