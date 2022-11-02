import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVideoNote extends Request {
  RequestSendVideoNote(RequestParametersSendVideoNote parameters)
      : super(RequestMethod.sendVideoNote, parameters);

  @override
  ResponseSendVideoNote respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVideoNote.fromJson(json)..withRequest(this);
}
