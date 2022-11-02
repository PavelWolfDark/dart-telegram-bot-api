import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetGameScore extends Request {
  RequestSetGameScore(RequestParametersSetGameScore parameters)
      : super(RequestMethod.setGameScore, parameters);

  @override
  ResponseSetGameScore respondFromJson(Map<String, dynamic> json) =>
      ResponseSetGameScore.fromJson(json)..withRequest(this);
}
