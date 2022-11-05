import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageReplyMarkup extends Request {
  RequestEditMessageReplyMarkup(
      RequestParametersEditMessageReplyMarkup parameters)
      : super(RequestMethod.editMessageReplyMarkup, parameters);

  factory RequestEditMessageReplyMarkup.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageReplyMarkup(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    return RequestEditMessageReplyMarkup(requestParameters);
  }

  @override
  ResponseEditMessageReplyMarkup respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageReplyMarkup.fromJson(json)..withRequest(this);
}
