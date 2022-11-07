import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVoice extends Request {
  RequestSendVoice(RequestParametersSendVoice parameters)
      : super(RequestMethod.sendVoice, parameters);

  factory RequestSendVoice.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object voice,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendVoice(
        chatId: chatId,
        messageThreadId: messageThreadId,
        voice: voice,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        duration: duration,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendVoice(requestParameters);
  }

  @override
  ResponseSendVoice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVoice.fromJson(json)..withRequest(this);
}
