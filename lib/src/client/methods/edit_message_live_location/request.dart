import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageLiveLocation extends Request {
  RequestEditMessageLiveLocation(
      RequestParametersEditMessageLiveLocation parameters)
      : super(RequestMethod.editMessageLiveLocation);

  @override
  ResponseEditMessageLiveLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageLiveLocation.fromJson(json)..withRequest(this);
}
