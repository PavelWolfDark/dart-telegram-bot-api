import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestReopenForumTopic extends Request {
  RequestReopenForumTopic(RequestParametersReopenForumTopic parameters)
      : super(RequestMethod.reopenForumTopic, parameters);

  factory RequestReopenForumTopic.create(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final requestParameters = RequestParametersReopenForumTopic(
        chatId: chatId, messageThreadId: messageThreadId);
    return RequestReopenForumTopic(requestParameters);
  }

  @override
  ResponseReopenForumTopic respondFromJson(Map<String, dynamic> json) =>
      ResponseReopenForumTopic.fromJson(json)..withRequest(this);
}
