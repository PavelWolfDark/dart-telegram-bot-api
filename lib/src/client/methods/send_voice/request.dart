import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVoice extends Request {
  RequestSendVoice(RequestParametersSendVoice parameters)
      : super(RequestMethod.sendVoice, parameters);

  @override
  ResponseSendVoice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVoice.fromJson(json)..withRequest(this);
}
