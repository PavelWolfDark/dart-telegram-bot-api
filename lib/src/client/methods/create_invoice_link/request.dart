import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateInvoiceLink extends Request {
  RequestCreateInvoiceLink(RequestParametersCreateInvoiceLink parameters)
      : super(RequestMethod.createInvoiceLink, parameters);

  @override
  ResponseCreateInvoiceLink respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateInvoiceLink.fromJson(json)..withRequest(this);
}
