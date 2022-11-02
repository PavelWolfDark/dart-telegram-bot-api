import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetFile extends Request {
  RequestGetFile(RequestParametersGetFile parameters)
      : super(RequestMethod.getFile, parameters);

  @override
  ResponseGetFile respondFromJson(Map<String, dynamic> json) =>
      ResponseGetFile.fromJson(json)..withRequest(this);
}
