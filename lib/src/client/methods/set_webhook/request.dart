import '../../../constants/request_method.dart';
import '../../../models/input_file.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetWebhook extends Request {
  RequestSetWebhook(RequestParametersSetWebhook parameters)
      : super(RequestMethod.setWebhook, parameters);

  factory RequestSetWebhook.create(
      {required String url,
      InputFile? certificate,
      String? ipAddress,
      int? maxConnections,
      // List<UpdateType,
      List<String>? allowedUpdates,
      bool? dropPendingUpdates,
      String? secretToken}) {
    final requestParameters = RequestParametersSetWebhook(
        url: url,
        certificate: certificate,
        ipAddress: ipAddress,
        maxConnections: maxConnections,
        allowedUpdates: allowedUpdates,
        dropPendingUpdates: dropPendingUpdates,
        secretToken: secretToken);
    return RequestSetWebhook(requestParameters);
  }

  @override
  ResponseSetWebhook respondFromJson(Map<String, dynamic> json) =>
      ResponseSetWebhook.fromJson(json)..withRequest(this);
}
