import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCopyMessage extends Request {
  RequestCopyMessage(RequestParametersCopyMessage parameters)
      : super(RequestMethod.copyMessage, parameters);

  @override
  ResponseCopyMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseCopyMessage.fromJson(json)..withRequest(this);
}
