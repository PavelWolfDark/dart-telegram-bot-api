import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendAnimation extends Request {
  RequestSendAnimation(RequestParametersSendAnimation parameters)
      : super(RequestMethod.sendAnimation, parameters);

  factory RequestSendAnimation.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object animation,
      int? duration,
      int? width,
      int? height,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendAnimation(
        chatId: chatId,
        messageThreadId: messageThreadId,
        animation: animation,
        duration: duration,
        width: width,
        height: height,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendAnimation(requestParameters);
  }

  @override
  ResponseSendAnimation respondFromJson(Map<String, dynamic> json) =>
      ResponseSendAnimation.fromJson(json)..withRequest(this);
}
