import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetPassportDataErrors extends Request {
  RequestSetPassportDataErrors(
      RequestParametersSetPassportDataErrors parameters)
      : super(RequestMethod.setPassportDataErrors, parameters);

  @override
  ResponseSetPassportDataErrors respondFromJson(Map<String, dynamic> json) =>
      ResponseSetPassportDataErrors.fromJson(json)..withRequest(this);
}
