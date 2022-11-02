import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestStopPoll extends Request {
  RequestStopPoll(RequestParametersStopPoll parameters)
      : super(RequestMethod.stopPoll, parameters);

  @override
  ResponseStopPoll respondFromJson(Map<String, dynamic> json) =>
      ResponseStopPoll.fromJson(json)..withRequest(this);
}
