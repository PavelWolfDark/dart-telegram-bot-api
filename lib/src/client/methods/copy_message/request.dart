import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCopyMessage extends Request {
  RequestCopyMessage(RequestParametersCopyMessage parameters)
      : super(RequestMethod.copyMessage, parameters);

  factory RequestCopyMessage.create(
      {
      // int | String
      required Object chatId,
      // int | String
      required Object fromChatId,
      required int messageId,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersCopyMessage(
        chatId: chatId,
        fromChatId: fromChatId,
        messageId: messageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestCopyMessage(requestParameters);
  }

  @override
  ResponseCopyMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseCopyMessage.fromJson(json)..withRequest(this);
}
