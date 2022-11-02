import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatPhoto extends Request {
  RequestSetChatPhoto(RequestParametersSetChatPhoto parameters)
      : super(RequestMethod.setChatPhoto, parameters);

  @override
  ResponseSetChatPhoto respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatPhoto.fromJson(json)..withRequest(this);
}
