import 'dart:convert';
import '../../../models/chat_administrator_rights.dart';
import '../../request_parameters.dart';

class RequestParametersSetMyDefaultAdministratorRights
    implements RequestParameters {
  @override
  final hasInputFiles = false;
  final ChatAdministratorRights? rights;
  final bool? forChannels;

  RequestParametersSetMyDefaultAdministratorRights(
      {this.rights, this.forChannels});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (rights != null) {
      json['rights'] = rights!.toJson();
    }
    if (forChannels != null) {
      json['for_channels'] = forChannels;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (rights != null) {
      formData['rights'] = jsonEncode(rights!.toJson());
    }
    if (forChannels != null) {
      formData['for_channels'] = forChannels.toString();
    }
    return formData;
  }
}
