import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendPhoto extends Request {
  RequestSendPhoto(RequestParametersSendPhoto parameters)
      : super(RequestMethod.sendPhoto, parameters);

  @override
  ResponseSendPhoto respondFromJson(Map<String, dynamic> json) =>
      ResponseSendPhoto.fromJson(json)..withRequest(this);
}
