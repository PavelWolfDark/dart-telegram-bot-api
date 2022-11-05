import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVideoNote extends Request {
  RequestSendVideoNote(RequestParametersSendVideoNote parameters)
      : super(RequestMethod.sendVideoNote, parameters);

  factory RequestSendVideoNote.create(
      {
      // int | String
      required Object chatId,
      // InputFile | String
      required Object videoNote,
      int? duration,
      int? length,
      // InputFile | String
      Object? thumb,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendVideoNote(
        chatId: chatId,
        videoNote: videoNote,
        duration: duration,
        length: length,
        thumb: thumb,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendVideoNote(requestParameters);
  }

  @override
  ResponseSendVideoNote respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVideoNote.fromJson(json)..withRequest(this);
}
