import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteForumTopic extends Request {
  RequestDeleteForumTopic(RequestParametersDeleteForumTopic parameters)
      : super(RequestMethod.deleteForumTopic, parameters);

  factory RequestDeleteForumTopic.create(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final requestParameters = RequestParametersDeleteForumTopic(
        chatId: chatId, messageThreadId: messageThreadId);
    return RequestDeleteForumTopic(requestParameters);
  }

  @override
  ResponseDeleteForumTopic respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteForumTopic.fromJson(json)..withRequest(this);
}
