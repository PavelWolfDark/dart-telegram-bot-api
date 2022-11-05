import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetMyDefaultAdministratorRights extends Request {
  RequestGetMyDefaultAdministratorRights(
      [RequestParametersGetMyDefaultAdministratorRights? parameters])
      : super(RequestMethod.getMyDefaultAdministratorRights, parameters);

  factory RequestGetMyDefaultAdministratorRights.create({bool? forChannels}) {
    final requestParameters = RequestParametersGetMyDefaultAdministratorRights(
        forChannels: forChannels);
    return RequestGetMyDefaultAdministratorRights(requestParameters);
  }

  @override
  ResponseGetMyDefaultAdministratorRights respondFromJson(
          Map<String, dynamic> json) =>
      ResponseGetMyDefaultAdministratorRights.fromJson(json)..withRequest(this);
}
