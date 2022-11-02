import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageCaption extends Request {
  RequestEditMessageCaption(RequestParametersEditMessageCaption parameters)
      : super(RequestMethod.editMessageCaption, parameters);

  @override
  ResponseEditMessageCaption respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageCaption.fromJson(json)..withRequest(this);
}
