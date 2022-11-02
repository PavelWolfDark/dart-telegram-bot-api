import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetWebhook extends Request {
  RequestSetWebhook(RequestParametersSetWebhook parameters)
      : super(RequestMethod.setWebhook, parameters);

  @override
  ResponseSetWebhook respondFromJson(Map<String, dynamic> json) =>
      ResponseSetWebhook.fromJson(json)..withRequest(this);
}
