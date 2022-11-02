import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetGameHighScores extends Request {
  RequestGetGameHighScores(RequestParametersGetGameHighScores parameters)
      : super(RequestMethod.getGameHighScores, parameters);

  @override
  ResponseGetGameHighScores respondFromJson(Map<String, dynamic> json) =>
      ResponseGetGameHighScores.fromJson(json)..withRequest(this);
}
