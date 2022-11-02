import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestPromoteChatMember extends Request {
  RequestPromoteChatMember(RequestParametersPromoteChatMember parameters)
      : super(RequestMethod.promoteChatMember, parameters);

  @override
  ResponsePromoteChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponsePromoteChatMember.fromJson(json)..withRequest(this);
}
