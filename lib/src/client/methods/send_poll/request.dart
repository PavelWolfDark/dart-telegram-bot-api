import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendPoll extends Request {
  RequestSendPoll(RequestParametersSendPoll parameters)
      : super(RequestMethod.sendPoll, parameters);

  @override
  ResponseSendPoll respondFromJson(Map<String, dynamic> json) =>
      ResponseSendPoll.fromJson(json)..withRequest(this);
}
