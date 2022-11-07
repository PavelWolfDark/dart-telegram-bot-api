import '../../../constants/request_method.dart';
import '../../../models/input_media.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendMediaGroup extends Request {
  RequestSendMediaGroup(RequestParametersSendMediaGroup parameters)
      : super(RequestMethod.sendMediaGroup, parameters);

  factory RequestSendMediaGroup.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required List<InputMedia> media,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply}) {
    final requestParameters = RequestParametersSendMediaGroup(
        chatId: chatId,
        messageThreadId: messageThreadId,
        media: media,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply);
    return RequestSendMediaGroup(requestParameters);
  }

  @override
  ResponseSendMediaGroup respondFromJson(Map<String, dynamic> json) =>
      ResponseSendMediaGroup.fromJson(json)..withRequest(this);
}
