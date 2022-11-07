import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendMessage extends Request {
  RequestSendMessage(RequestParametersSendMessage parameters)
      : super(RequestMethod.sendMessage, parameters);

  factory RequestSendMessage.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String text,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendMessage(
        chatId: chatId,
        messageThreadId: messageThreadId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendMessage(requestParameters);
  }

  @override
  ResponseSendMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseSendMessage.fromJson(json)..withRequest(this);
}
