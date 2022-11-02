import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestRestrictChatMember extends Request {
  RequestRestrictChatMember(RequestParametersRestrictChatMember parameters)
      : super(RequestMethod.restrictChatMember, parameters);

  @override
  ResponseRestrictChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseRestrictChatMember.fromJson(json)..withRequest(this);
}
