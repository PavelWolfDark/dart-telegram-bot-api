import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendDice extends Request {
  RequestSendDice(RequestParametersSendDice parameters)
      : super(RequestMethod.sendDice, parameters);

  @override
  ResponseSendDice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendDice.fromJson(json)..withRequest(this);
}
