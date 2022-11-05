import '../../../constants/request_method.dart';
import '../../../models/chat_administrator_rights.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetMyDefaultAdministratorRights extends Request {
  RequestSetMyDefaultAdministratorRights(
      [RequestParametersSetMyDefaultAdministratorRights? parameters])
      : super(RequestMethod.setMyDefaultAdministratorRights, parameters);

  factory RequestSetMyDefaultAdministratorRights.create(
      {ChatAdministratorRights? rights, bool? forChannels}) {
    final requestParameters = RequestParametersSetMyDefaultAdministratorRights(
        rights: rights, forChannels: forChannels);
    return RequestSetMyDefaultAdministratorRights(requestParameters);
  }

  @override
  ResponseSetMyDefaultAdministratorRights respondFromJson(
          Map<String, dynamic> json) =>
      ResponseSetMyDefaultAdministratorRights.fromJson(json)..withRequest(this);
}
