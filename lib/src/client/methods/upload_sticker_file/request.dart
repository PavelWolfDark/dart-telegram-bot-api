import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUploadStickerFile extends Request {
  RequestUploadStickerFile(RequestParametersUploadStickerFile parameters)
      : super(RequestMethod.uploadStickerFile, parameters);

  @override
  ResponseUploadStickerFile respondFromJson(Map<String, dynamic> json) =>
      ResponseUploadStickerFile.fromJson(json)..withRequest(this);
}
