import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetGameHighScores extends Request {
  RequestGetGameHighScores(RequestParametersGetGameHighScores parameters)
      : super(RequestMethod.getGameHighScores, parameters);

  factory RequestGetGameHighScores.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId}) {
    final requestParameters = RequestParametersGetGameHighScores(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId);
    return RequestGetGameHighScores(requestParameters);
  }

  @override
  ResponseGetGameHighScores respondFromJson(Map<String, dynamic> json) =>
      ResponseGetGameHighScores.fromJson(json)..withRequest(this);
}
