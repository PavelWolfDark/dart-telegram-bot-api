import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteMyCommands extends Request {
  RequestDeleteMyCommands([RequestParametersDeleteMyCommands? parameters])
      : super(RequestMethod.deleteMyCommands, parameters);

  @override
  ResponseDeleteMyCommands respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteMyCommands.fromJson(json)..withRequest(this);
}
