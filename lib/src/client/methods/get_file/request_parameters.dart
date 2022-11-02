import '../../request_parameters.dart';

class RequestParametersGetFile implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String fileId;

  RequestParametersGetFile({required this.fileId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['file_id'] = fileId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['file_id'] = fileId;
    return formData;
  }
}
