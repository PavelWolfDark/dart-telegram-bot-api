import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetMyCommands extends Request {
  RequestSetMyCommands(RequestParametersSetMyCommands parameters)
      : super(RequestMethod.setMyCommands, parameters);

  @override
  ResponseSetMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseSetMyCommands.fromJson(json)..withRequest(this);
}
