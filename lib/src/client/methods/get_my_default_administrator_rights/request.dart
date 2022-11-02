import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetMyDefaultAdministratorRights extends Request {
  RequestGetMyDefaultAdministratorRights(
      [RequestParametersGetMyDefaultAdministratorRights? parameters])
      : super(RequestMethod.getMyDefaultAdministratorRights, parameters);

  @override
  ResponseGetMyDefaultAdministratorRights respondFromJson(
          Map<String, dynamic> json) =>
      ResponseGetMyDefaultAdministratorRights.fromJson(json)..withRequest(this);
}
