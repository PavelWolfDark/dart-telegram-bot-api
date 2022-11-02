import '../../../models/input_file.dart';
import '../../request_parameters.dart';

class RequestParametersUploadStickerFile implements RequestParameters {
  @override
  final hasInputFiles = true;
  final int userId;
  final InputFile pngSticker;

  RequestParametersUploadStickerFile(
      {required this.userId, required this.pngSticker});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = userId;
    json['png_sticker'] = pngSticker;
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['user_id'] = userId.toString();
    formData['png_sticker'] = pngSticker;
    return formData;
  }
}
