import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendDocument extends Request {
  RequestSendDocument(RequestParametersSendDocument parameters)
      : super(RequestMethod.sendDocument, parameters);

  @override
  ResponseSendDocument respondFromJson(Map<String, dynamic> json) =>
      ResponseSendDocument.fromJson(json)..withRequest(this);
}
