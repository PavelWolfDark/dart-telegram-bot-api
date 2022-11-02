import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetStickerSetThumb extends Request {
  RequestSetStickerSetThumb(RequestParametersSetStickerSetThumb parameters)
      : super(RequestMethod.setStickerSetThumb, parameters);

  @override
  ResponseSetStickerSetThumb respondFromJson(Map<String, dynamic> json) =>
      ResponseSetStickerSetThumb.fromJson(json)..withRequest(this);
}
