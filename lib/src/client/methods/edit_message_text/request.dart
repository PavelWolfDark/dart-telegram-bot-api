import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../../models/message_entity.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageText extends Request {
  RequestEditMessageText(RequestParametersEditMessageText parameters)
      : super(RequestMethod.editMessageText, parameters);

  factory RequestEditMessageText.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required String text,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageText(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        replyMarkup: replyMarkup);
    return RequestEditMessageText(requestParameters);
  }

  @override
  ResponseEditMessageText respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageText.fromJson(json)..withRequest(this);
}
