import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendAudio extends Request {
  RequestSendAudio(RequestParametersSendAudio parameters)
      : super(RequestMethod.sendAudio, parameters);

  @override
  ResponseSendAudio respondFromJson(Map<String, dynamic> json) =>
      ResponseSendAudio.fromJson(json)..withRequest(this);
}
