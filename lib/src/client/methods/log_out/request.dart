import '../../../constants/request_method.dart';
import '../../request.dart';
import 'response.dart';

class RequestLogOut extends Request {
  RequestLogOut() : super(RequestMethod.logOut);

  @override
  ResponseLogOut respondFromJson(Map<String, dynamic> json) =>
      ResponseLogOut.fromJson(json)..withRequest(this);
}
