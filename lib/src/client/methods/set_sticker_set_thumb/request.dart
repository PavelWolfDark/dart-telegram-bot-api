import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetStickerSetThumb extends Request {
  RequestSetStickerSetThumb(RequestParametersSetStickerSetThumb parameters)
      : super(RequestMethod.setStickerSetThumb, parameters);

  factory RequestSetStickerSetThumb.create(
      {required String name,
      required int userId,
      // InputFile | String
      Object? thumb}) {
    final requestParameters = RequestParametersSetStickerSetThumb(
        name: name, userId: userId, thumb: thumb);
    return RequestSetStickerSetThumb(requestParameters);
  }

  @override
  ResponseSetStickerSetThumb respondFromJson(Map<String, dynamic> json) =>
      ResponseSetStickerSetThumb.fromJson(json)..withRequest(this);
}
