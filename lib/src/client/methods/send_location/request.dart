import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendLocation extends Request {
  RequestSendLocation(RequestParametersSendLocation parameters)
      : super(RequestMethod.sendLocation, parameters);

  @override
  ResponseSendLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseSendLocation.fromJson(json)..withRequest(this);
}
