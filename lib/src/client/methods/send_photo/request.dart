import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendPhoto extends Request {
  RequestSendPhoto(RequestParametersSendPhoto parameters)
      : super(RequestMethod.sendPhoto, parameters);

  factory RequestSendPhoto.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object photo,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendPhoto(
        chatId: chatId,
        messageThreadId: messageThreadId,
        photo: photo,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendPhoto(requestParameters);
  }

  @override
  ResponseSendPhoto respondFromJson(Map<String, dynamic> json) =>
      ResponseSendPhoto.fromJson(json)..withRequest(this);
}
