import '../../../models/input_file.dart';
import '../../request_parameters.dart';

class RequestParametersSetStickerSetThumb implements RequestParameters {
  final String name;
  final int userId;
  // InputFile | String
  final Object? thumb;

  bool get hasInputFiles => thumb is InputFile;

  RequestParametersSetStickerSetThumb(
      {required this.name, required this.userId, this.thumb});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['name'] = name;
    json['user_id'] = userId;
    if (thumb != null) {
      json['thumb'] = thumb;
    }
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['name'] = name;
    formData['user_id'] = userId.toString();
    if (thumb != null) {
      formData['thumb'] = thumb;
    }
    return formData;
  }
}
