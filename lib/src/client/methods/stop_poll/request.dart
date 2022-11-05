import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestStopPoll extends Request {
  RequestStopPoll(RequestParametersStopPoll parameters)
      : super(RequestMethod.stopPoll, parameters);

  factory RequestStopPoll.create(
      {
      // int | String
      required Object chatId,
      required int messageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersStopPoll(
        chatId: chatId, messageId: messageId, replyMarkup: replyMarkup);
    return RequestStopPoll(requestParameters);
  }

  @override
  ResponseStopPoll respondFromJson(Map<String, dynamic> json) =>
      ResponseStopPoll.fromJson(json)..withRequest(this);
}
