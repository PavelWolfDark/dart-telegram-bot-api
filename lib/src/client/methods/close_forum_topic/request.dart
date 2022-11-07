import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCloseForumTopic extends Request {
  RequestCloseForumTopic(RequestParametersCloseForumTopic parameters)
      : super(RequestMethod.closeForumTopic, parameters);

  factory RequestCloseForumTopic.create(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final requestParameters = RequestParametersCloseForumTopic(
        chatId: chatId, messageThreadId: messageThreadId);
    return RequestCloseForumTopic(requestParameters);
  }

  @override
  ResponseCloseForumTopic respondFromJson(Map<String, dynamic> json) =>
      ResponseCloseForumTopic.fromJson(json)..withRequest(this);
}
