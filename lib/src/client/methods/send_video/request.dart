import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVideo extends Request {
  RequestSendVideo(RequestParametersSendVideo parameters)
      : super(RequestMethod.sendVideo, parameters);

  @override
  ResponseSendVideo respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVideo.fromJson(json)..withRequest(this);
}
