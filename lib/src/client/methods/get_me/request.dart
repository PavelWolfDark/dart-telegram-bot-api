import '../../../constants/request_method.dart';
import '../../request.dart';
import 'response.dart';

class RequestGetMe extends Request {
  RequestGetMe() : super(RequestMethod.getMe);

  @override
  ResponseGetMe respondFromJson(Map<String, dynamic> json) =>
      ResponseGetMe.fromJson(json)..withRequest(this);
}
