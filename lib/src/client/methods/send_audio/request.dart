import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendAudio extends Request {
  RequestSendAudio(RequestParametersSendAudio parameters)
      : super(RequestMethod.sendAudio, parameters);

  factory RequestSendAudio.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object audio,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      String? performer,
      String? title,
      // InputFile | String
      Object? thumb,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendAudio(
        chatId: chatId,
        messageThreadId: messageThreadId,
        audio: audio,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        duration: duration,
        performer: performer,
        title: title,
        thumb: thumb,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendAudio(requestParameters);
  }

  @override
  ResponseSendAudio respondFromJson(Map<String, dynamic> json) =>
      ResponseSendAudio.fromJson(json)..withRequest(this);
}
