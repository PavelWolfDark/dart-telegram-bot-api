import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetFile extends Request {
  RequestGetFile(RequestParametersGetFile parameters)
      : super(RequestMethod.getFile, parameters);

  factory RequestGetFile.create({required String fileId}) {
    final requestParameters = RequestParametersGetFile(fileId: fileId);
    return RequestGetFile(requestParameters);
  }

  @override
  ResponseGetFile respondFromJson(Map<String, dynamic> json) =>
      ResponseGetFile.fromJson(json)..withRequest(this);
}
