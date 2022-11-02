import '../../request_parameters.dart';

class RequestParametersSetStickerPositionInSet implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String sticker;
  final int position;

  RequestParametersSetStickerPositionInSet(
      {required this.sticker, required this.position});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['sticker'] = sticker;
    json['position'] = position;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['sticker'] = sticker;
    formData['position'] = position.toString();
    return formData;
  }
}
