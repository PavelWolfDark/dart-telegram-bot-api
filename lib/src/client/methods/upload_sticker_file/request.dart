import '../../../constants/request_method.dart';
import '../../../models/input_file.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUploadStickerFile extends Request {
  RequestUploadStickerFile(RequestParametersUploadStickerFile parameters)
      : super(RequestMethod.uploadStickerFile, parameters);

  factory RequestUploadStickerFile.create(
      {required int userId, required InputFile pngSticker}) {
    final requestParameters = RequestParametersUploadStickerFile(
        userId: userId, pngSticker: pngSticker);
    return RequestUploadStickerFile(requestParameters);
  }

  @override
  ResponseUploadStickerFile respondFromJson(Map<String, dynamic> json) =>
      ResponseUploadStickerFile.fromJson(json)..withRequest(this);
}
