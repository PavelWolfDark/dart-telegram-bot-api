import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatMember extends Request {
  RequestGetChatMember(RequestParametersGetChatMember parameters)
      : super(RequestMethod.getChatMember, parameters);

  @override
  ResponseGetChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatMember.fromJson(json)..withRequest(this);
}
