import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendGame extends Request {
  RequestSendGame(RequestParametersSendGame parameters)
      : super(RequestMethod.sendGame, parameters);

  @override
  ResponseSendGame respondFromJson(Map<String, dynamic> json) =>
      ResponseSendGame.fromJson(json)..withRequest(this);
}
