import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChat extends Request {
  RequestGetChat(RequestParametersGetChat parameters)
      : super(RequestMethod.getChat, parameters);

  @override
  ResponseGetChat respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChat.fromJson(json)..withRequest(this);
}
