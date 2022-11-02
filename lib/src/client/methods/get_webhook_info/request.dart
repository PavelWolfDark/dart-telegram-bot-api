import '../../../constants/request_method.dart';
import '../../request.dart';
import 'response.dart';

class RequestGetWebhookInfo extends Request {
  RequestGetWebhookInfo() : super(RequestMethod.getWebhookInfo);

  @override
  ResponseGetWebhookInfo respondFromJson(Map<String, dynamic> json) =>
      ResponseGetWebhookInfo.fromJson(json)..withRequest(this);
}
