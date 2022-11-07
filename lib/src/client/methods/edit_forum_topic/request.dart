import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditForumTopic extends Request {
  RequestEditForumTopic(RequestParametersEditForumTopic parameters)
      : super(RequestMethod.editForumTopic, parameters);

  factory RequestEditForumTopic.create(
      { // int | String
      required Object chatId,
      required int messageThreadId,
      required String name,
      required String iconCustomEmojiId}) {
    final requestParameters = RequestParametersEditForumTopic(
        chatId: chatId,
        messageThreadId: messageThreadId,
        name: name,
        iconCustomEmojiId: iconCustomEmojiId);
    return RequestEditForumTopic(requestParameters);
  }

  @override
  ResponseEditForumTopic respondFromJson(Map<String, dynamic> json) =>
      ResponseEditForumTopic.fromJson(json)..withRequest(this);
}
