import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatDescription extends Request {
  RequestSetChatDescription(RequestParametersSetChatDescription parameters)
      : super(RequestMethod.setChatDescription, parameters);

  @override
  ResponseSetChatDescription respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatDescription.fromJson(json)..withRequest(this);
}
