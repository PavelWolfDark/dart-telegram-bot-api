import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestBanChatMember extends Request {
  RequestBanChatMember(RequestParametersBanChatMember parameters)
      : super(RequestMethod.banChatMember, parameters);

  @override
  ResponseBanChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseBanChatMember.fromJson(json)..withRequest(this);
}
