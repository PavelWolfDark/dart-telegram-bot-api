import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeclineChatJoinRequest extends Request {
  RequestDeclineChatJoinRequest(
      RequestParametersDeclineChatJoinRequest parameters)
      : super(RequestMethod.declineChatJoinRequest, parameters);

  @override
  ResponseDeclineChatJoinRequest respondFromJson(Map<String, dynamic> json) =>
      ResponseDeclineChatJoinRequest.fromJson(json)..withRequest(this);
}
