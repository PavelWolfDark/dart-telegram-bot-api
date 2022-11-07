import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVideo extends Request {
  RequestSendVideo(RequestParametersSendVideo parameters)
      : super(RequestMethod.sendVideo, parameters);

  factory RequestSendVideo.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object video,
      int? duration,
      int? width,
      int? height,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? supportsStreaming,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendVideo(
        chatId: chatId,
        messageThreadId: messageThreadId,
        video: video,
        duration: duration,
        width: width,
        height: height,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        supportsStreaming: supportsStreaming,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendVideo(requestParameters);
  }

  @override
  ResponseSendVideo respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVideo.fromJson(json)..withRequest(this);
}
