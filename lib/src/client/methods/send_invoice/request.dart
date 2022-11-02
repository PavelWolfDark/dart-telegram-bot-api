import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendInvoice extends Request {
  RequestSendInvoice(RequestParametersSendInvoice parameters)
      : super(RequestMethod.sendInvoice, parameters);

  @override
  ResponseSendInvoice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendInvoice.fromJson(json)..withRequest(this);
}
