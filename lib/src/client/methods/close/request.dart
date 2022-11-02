import '../../../constants/request_method.dart';
import '../../request.dart';
import 'response.dart';

class RequestClose extends Request {
  RequestClose() : super(RequestMethod.close);

  @override
  ResponseClose respondFromJson(Map<String, dynamic> json) =>
      ResponseClose.fromJson(json)..withRequest(this);
}
