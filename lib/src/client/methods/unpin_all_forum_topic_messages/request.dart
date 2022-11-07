import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnpinAllForumTopicMessages extends Request {
  RequestUnpinAllForumTopicMessages(
      RequestParametersUnpinAllForumTopicMessages parameters)
      : super(RequestMethod.unpinAllForumTopicMessages, parameters);

  factory RequestUnpinAllForumTopicMessages.create(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final requestParameters = RequestParametersUnpinAllForumTopicMessages(
        chatId: chatId, messageThreadId: messageThreadId);
    return RequestUnpinAllForumTopicMessages(requestParameters);
  }

  @override
  ResponseUnpinAllForumTopicMessages respondFromJson(
          Map<String, dynamic> json) =>
      ResponseUnpinAllForumTopicMessages.fromJson(json)..withRequest(this);
}
