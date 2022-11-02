import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnbanChatMember extends Request {
  RequestUnbanChatMember(RequestParametersUnbanChatMember parameters)
      : super(RequestMethod.unbanChatMember, parameters);

  @override
  ResponseUnbanChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseUnbanChatMember.fromJson(json)..withRequest(this);
}
