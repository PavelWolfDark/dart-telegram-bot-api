import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendPoll extends Request {
  RequestSendPoll(RequestParametersSendPoll parameters)
      : super(RequestMethod.sendPoll, parameters);

  factory RequestSendPoll.create(
      {
      // int | String
      required Object chatId,
      required String question,
      required List<String> options,
      bool? isAnonymous,
      // PollType
      String? type,
      bool? allowsMultipleAnswers,
      int? correctOptionId,
      String? explanation,
      // ParseMode
      String? explanationParseMode,
      List<MessageEntity>? explanationEntities,
      int? openPeriod,
      int? closeDate,
      bool? isClosed,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendPoll(
        chatId: chatId,
        question: question,
        options: options,
        isAnonymous: isAnonymous,
        type: type,
        allowsMultipleAnswers: allowsMultipleAnswers,
        correctOptionId: correctOptionId,
        explanation: explanation,
        explanationParseMode: explanationParseMode,
        explanationEntities: explanationEntities,
        openPeriod: openPeriod,
        closeDate: closeDate,
        isClosed: isClosed,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendPoll(requestParameters);
  }

  @override
  ResponseSendPoll respondFromJson(Map<String, dynamic> json) =>
      ResponseSendPoll.fromJson(json)..withRequest(this);
}
