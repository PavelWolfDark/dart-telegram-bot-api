import '../../request_parameters.dart';

class RequestParametersGetStickerSet implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String name;

  RequestParametersGetStickerSet({required this.name});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['name'] = name;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['name'] = name;
    return formData;
  }
}
