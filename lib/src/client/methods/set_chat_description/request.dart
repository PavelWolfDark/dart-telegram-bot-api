import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatDescription extends Request {
  RequestSetChatDescription(RequestParametersSetChatDescription parameters)
      : super(RequestMethod.setChatDescription, parameters);

  factory RequestSetChatDescription.create(
      {
      // int | String
      required Object chatId,
      String? description}) {
    final requestParameters = RequestParametersSetChatDescription(
        chatId: chatId, description: description);
    return RequestSetChatDescription(requestParameters);
  }

  @override
  ResponseSetChatDescription respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatDescription.fromJson(json)..withRequest(this);
}
