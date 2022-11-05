import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestStopMessageLiveLocation extends Request {
  RequestStopMessageLiveLocation(
      RequestParametersStopMessageLiveLocation parameters)
      : super(RequestMethod.stopMessageLiveLocation, parameters);

  factory RequestStopMessageLiveLocation.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersStopMessageLiveLocation(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    return RequestStopMessageLiveLocation(requestParameters);
  }

  @override
  ResponseStopMessageLiveLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseStopMessageLiveLocation.fromJson(json)..withRequest(this);
}
