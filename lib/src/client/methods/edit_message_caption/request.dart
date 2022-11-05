import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../../models/message_entity.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageCaption extends Request {
  RequestEditMessageCaption(RequestParametersEditMessageCaption parameters)
      : super(RequestMethod.editMessageCaption, parameters);

  factory RequestEditMessageCaption.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required String caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageCaption(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup);
    return RequestEditMessageCaption(requestParameters);
  }

  @override
  ResponseEditMessageCaption respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageCaption.fromJson(json)..withRequest(this);
}
