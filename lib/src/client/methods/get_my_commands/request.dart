import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetMyCommands extends Request {
  RequestGetMyCommands([RequestParametersGetMyCommands? parameters])
      : super(RequestMethod.getMyCommands, parameters);

  @override
  ResponseGetMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseGetMyCommands.fromJson(json)..withRequest(this);
}
