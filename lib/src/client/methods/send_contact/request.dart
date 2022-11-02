import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendContact extends Request {
  RequestSendContact(RequestParametersSendContact parameters)
      : super(RequestMethod.sendContact, parameters);

  @override
  ResponseSendContact respondFromJson(Map<String, dynamic> json) =>
      ResponseSendContact.fromJson(json)..withRequest(this);
}
