import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestStopMessageLiveLocation extends Request {
  RequestStopMessageLiveLocation(
      RequestParametersStopMessageLiveLocation parameters)
      : super(RequestMethod.stopMessageLiveLocation, parameters);

  @override
  ResponseStopMessageLiveLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseStopMessageLiveLocation.fromJson(json)..withRequest(this);
}
