import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteWebhook extends Request {
  RequestDeleteWebhook([RequestParametersDeleteWebhook? parameters])
      : super(RequestMethod.deleteWebhook, parameters);

  factory RequestDeleteWebhook.create({bool? dropPendingUpdates}) {
    final requestParameters =
        RequestParametersDeleteWebhook(dropPendingUpdates: dropPendingUpdates);
    return RequestDeleteWebhook(requestParameters);
  }

  @override
  ResponseDeleteWebhook respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteWebhook.fromJson(json)..withRequest(this);
}
