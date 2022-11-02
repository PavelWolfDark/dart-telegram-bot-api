import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetUpdates extends Request {
  RequestGetUpdates([RequestParametersGetUpdates? parameters])
      : super(RequestMethod.getUpdates, parameters);

  @override
  ResponseGetUpdates respondFromJson(Map<String, dynamic> json) =>
      ResponseGetUpdates.fromJson(json)..withRequest(this);
}
