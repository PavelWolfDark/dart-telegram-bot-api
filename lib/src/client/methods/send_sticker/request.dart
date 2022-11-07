import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendSticker extends Request {
  RequestSendSticker(RequestParametersSendSticker parameters)
      : super(RequestMethod.sendSticker, parameters);

  factory RequestSendSticker.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object sticker,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendSticker(
        chatId: chatId,
        messageThreadId: messageThreadId,
        sticker: sticker,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendSticker(requestParameters);
  }

  @override
  ResponseSendSticker respondFromJson(Map<String, dynamic> json) =>
      ResponseSendSticker.fromJson(json)..withRequest(this);
}
