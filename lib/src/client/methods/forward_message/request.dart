import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestForwardMessage extends Request {
  RequestForwardMessage(RequestParametersForwardMessage parameters)
      : super(RequestMethod.forwardMessage, parameters);

  @override
  ResponseForwardMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseForwardMessage.fromJson(json)..withRequest(this);
}
