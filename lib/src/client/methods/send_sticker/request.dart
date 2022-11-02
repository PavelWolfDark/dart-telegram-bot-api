import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendSticker extends Request {
  RequestSendSticker(RequestParametersSendSticker parameters)
      : super(RequestMethod.sendSticker, parameters);

  @override
  ResponseSendSticker respondFromJson(Map<String, dynamic> json) =>
      ResponseSendSticker.fromJson(json)..withRequest(this);
}
