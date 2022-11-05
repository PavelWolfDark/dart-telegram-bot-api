import '../../../constants/request_method.dart';
import '../../../models/passport_element_error.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetPassportDataErrors extends Request {
  RequestSetPassportDataErrors(
      RequestParametersSetPassportDataErrors parameters)
      : super(RequestMethod.setPassportDataErrors, parameters);

  factory RequestSetPassportDataErrors.create(
      {required int userId, required List<PassportElementError> errors}) {
    final requestParameters =
        RequestParametersSetPassportDataErrors(userId: userId, errors: errors);
    return RequestSetPassportDataErrors(requestParameters);
  }

  @override
  ResponseSetPassportDataErrors respondFromJson(Map<String, dynamic> json) =>
      ResponseSetPassportDataErrors.fromJson(json)..withRequest(this);
}
