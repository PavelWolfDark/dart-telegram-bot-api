import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageText extends Request {
  RequestEditMessageText(RequestParametersEditMessageText parameters)
      : super(RequestMethod.editMessageText, parameters);

  @override
  ResponseEditMessageText respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageText.fromJson(json)..withRequest(this);
}
