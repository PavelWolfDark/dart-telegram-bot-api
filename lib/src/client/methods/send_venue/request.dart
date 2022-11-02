import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVenue extends Request {
  RequestSendVenue(RequestParametersSendVenue parameters)
      : super(RequestMethod.sendVenue, parameters);

  @override
  ResponseSendVenue respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVenue.fromJson(json)..withRequest(this);
}
