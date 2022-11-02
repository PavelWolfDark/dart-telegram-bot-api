import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendAnimation extends Request {
  RequestSendAnimation(RequestParametersSendAnimation parameters)
      : super(RequestMethod.sendAnimation, parameters);

  @override
  ResponseSendAnimation respondFromJson(Map<String, dynamic> json) =>
      ResponseSendAnimation.fromJson(json)..withRequest(this);
}
