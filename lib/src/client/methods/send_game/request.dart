import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendGame extends Request {
  RequestSendGame(RequestParametersSendGame parameters)
      : super(RequestMethod.sendGame, parameters);

  factory RequestSendGame.create(
      {required int chatId,
      int? messageThreadId,
      required String gameShortName,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendGame(
        chatId: chatId,
        messageThreadId: messageThreadId,
        gameShortName: gameShortName,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendGame(requestParameters);
  }

  @override
  ResponseSendGame respondFromJson(Map<String, dynamic> json) =>
      ResponseSendGame.fromJson(json)..withRequest(this);
}
