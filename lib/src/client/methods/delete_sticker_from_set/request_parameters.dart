import '../../request_parameters.dart';

class RequestParametersDeleteStickerFromSet implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String sticker;

  RequestParametersDeleteStickerFromSet({required this.sticker});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['sticker'] = sticker;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['sticker'] = sticker;
    return formData;
  }
}
