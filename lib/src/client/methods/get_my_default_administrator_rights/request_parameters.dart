import '../../request_parameters.dart';

class RequestParametersGetMyDefaultAdministratorRights
    implements RequestParameters {
  @override
  final hasInputFiles = false;
  final bool? forChannels;

  RequestParametersGetMyDefaultAdministratorRights({this.forChannels});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (forChannels != null) {
      json['for_channels'] = forChannels;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (forChannels != null) {
      formData['for_channels'] = forChannels.toString();
    }
    return formData;
  }
}
