import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteMessage extends Request {
  RequestDeleteMessage(RequestParametersDeleteMessage parameters)
      : super(RequestMethod.deleteMessage, parameters);

  @override
  ResponseDeleteMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteMessage.fromJson(json)..withRequest(this);
}
