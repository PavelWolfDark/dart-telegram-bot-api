import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateForumTopic extends Request {
  RequestCreateForumTopic(RequestParametersCreateForumTopic parameters)
      : super(RequestMethod.createForumTopic, parameters);

  factory RequestCreateForumTopic.create(
      { // int | String
      required Object chatId,
      required String name,
      int? iconColor,
      String? iconCustomEmojiId}) {
    final requestParameters = RequestParametersCreateForumTopic(
        chatId: chatId,
        name: name,
        iconColor: iconColor,
        iconCustomEmojiId: iconCustomEmojiId);
    return RequestCreateForumTopic(requestParameters);
  }

  @override
  ResponseCreateForumTopic respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateForumTopic.fromJson(json)..withRequest(this);
}
