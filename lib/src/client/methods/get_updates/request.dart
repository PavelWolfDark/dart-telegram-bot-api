import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetUpdates extends Request {
  RequestGetUpdates([RequestParametersGetUpdates? parameters])
      : super(RequestMethod.getUpdates, parameters);

  factory RequestGetUpdates.create(
      {int? offset,
      int? limit,
      int? timeout,
      // List<UpdateType>
      List<String>? allowedUpdates}) {
    final requestParameters = RequestParametersGetUpdates(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates);
    return RequestGetUpdates(requestParameters);
  }

  @override
  ResponseGetUpdates respondFromJson(Map<String, dynamic> json) =>
      ResponseGetUpdates.fromJson(json)..withRequest(this);
}
