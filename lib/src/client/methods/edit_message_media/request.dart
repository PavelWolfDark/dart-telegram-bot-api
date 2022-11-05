import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../../models/input_media.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageMedia extends Request {
  RequestEditMessageMedia(RequestParametersEditMessageMedia parameters)
      : super(RequestMethod.editMessageMedia, parameters);

  factory RequestEditMessageMedia.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required InputMedia media,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageMedia(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        media: media,
        replyMarkup: replyMarkup);
    return RequestEditMessageMedia(requestParameters);
  }

  @override
  ResponseEditMessageMedia respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageMedia.fromJson(json)..withRequest(this);
}
