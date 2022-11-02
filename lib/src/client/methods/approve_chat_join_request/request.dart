import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestApproveChatJoinRequest extends Request {
  RequestApproveChatJoinRequest(
      RequestParametersApproveChatJoinRequest parameters)
      : super(RequestMethod.approveChatJoinRequest, parameters);

  @override
  ResponseApproveChatJoinRequest respondFromJson(Map<String, dynamic> json) =>
      ResponseApproveChatJoinRequest.fromJson(json)..withRequest(this);
}
