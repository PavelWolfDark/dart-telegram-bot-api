import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestLeaveChat extends Request {
  RequestLeaveChat(RequestParametersLeaveChat parameters)
      : super(RequestMethod.leaveChat, parameters);

  @override
  ResponseLeaveChat respondFromJson(Map<String, dynamic> json) =>
      ResponseLeaveChat.fromJson(json)..withRequest(this);
}
