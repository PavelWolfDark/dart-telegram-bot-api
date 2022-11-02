import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendMediaGroup extends Request {
  RequestSendMediaGroup(RequestParametersSendMediaGroup parameters)
      : super(RequestMethod.sendMediaGroup, parameters);

  @override
  ResponseSendMediaGroup respondFromJson(Map<String, dynamic> json) =>
      ResponseSendMediaGroup.fromJson(json)..withRequest(this);
}
