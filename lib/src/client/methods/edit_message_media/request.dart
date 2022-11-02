import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageMedia extends Request {
  RequestEditMessageMedia(RequestParametersEditMessageMedia parameters)
      : super(RequestMethod.editMessageMedia, parameters);

  @override
  ResponseEditMessageMedia respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageMedia.fromJson(json)..withRequest(this);
}
