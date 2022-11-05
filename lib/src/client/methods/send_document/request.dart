import '../../../constants/request_method.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendDocument extends Request {
  RequestSendDocument(RequestParametersSendDocument parameters)
      : super(RequestMethod.sendDocument, parameters);

  factory RequestSendDocument.create(
      {
      // int | String
      required Object chatId,
      // InputFile | String
      required Object document,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableContentTypeDetection,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendDocument(
        chatId: chatId,
        document: document,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableContentTypeDetection: disableContentTypeDetection,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendDocument(requestParameters);
  }

  @override
  ResponseSendDocument respondFromJson(Map<String, dynamic> json) =>
      ResponseSendDocument.fromJson(json)..withRequest(this);
}
