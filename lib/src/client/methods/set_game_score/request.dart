import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetGameScore extends Request {
  RequestSetGameScore(RequestParametersSetGameScore parameters)
      : super(RequestMethod.setGameScore, parameters);

  factory RequestSetGameScore.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId,
      required int score,
      bool? force,
      bool? disableEditMessage}) {
    final requestParameters = RequestParametersSetGameScore(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId,
        score: score,
        force: force,
        disableEditMessage: disableEditMessage);
    return RequestSetGameScore(requestParameters);
  }

  @override
  ResponseSetGameScore respondFromJson(Map<String, dynamic> json) =>
      ResponseSetGameScore.fromJson(json)..withRequest(this);
}
