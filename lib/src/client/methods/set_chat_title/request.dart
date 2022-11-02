import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatTitle extends Request {
  RequestSetChatTitle(RequestParametersSetChatTitle parameters)
      : super(RequestMethod.setChatTitle, parameters);

  @override
  ResponseSetChatTitle respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatTitle.fromJson(json)..withRequest(this);
}
