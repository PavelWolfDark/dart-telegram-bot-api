import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetMyDefaultAdministratorRights extends Request {
  RequestSetMyDefaultAdministratorRights(
      [RequestParametersSetMyDefaultAdministratorRights? parameters])
      : super(RequestMethod.setMyDefaultAdministratorRights, parameters);

  @override
  ResponseSetMyDefaultAdministratorRights respondFromJson(
          Map<String, dynamic> json) =>
      ResponseSetMyDefaultAdministratorRights.fromJson(json)..withRequest(this);
}
