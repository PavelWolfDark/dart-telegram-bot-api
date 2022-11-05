import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendDice extends Request {
  RequestSendDice(RequestParametersSendDice parameters)
      : super(RequestMethod.sendDice, parameters);

  factory RequestSendDice.create(
      {
      // int | String
      required Object chatId,
      // DiceEmoji
      String? emoji,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendDice(
        chatId: chatId,
        emoji: emoji,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendDice(requestParameters);
  }

  @override
  ResponseSendDice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendDice.fromJson(json)..withRequest(this);
}
