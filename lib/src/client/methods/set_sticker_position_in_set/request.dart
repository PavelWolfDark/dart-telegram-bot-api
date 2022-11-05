import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetStickerPositionInSet extends Request {
  RequestSetStickerPositionInSet(
      RequestParametersSetStickerPositionInSet parameters)
      : super(RequestMethod.setStickerPositionInSet, parameters);

  factory RequestSetStickerPositionInSet.create(
      {required String sticker, required int position}) {
    final requestParameters = RequestParametersSetStickerPositionInSet(
        sticker: sticker, position: position);
    return RequestSetStickerPositionInSet(requestParameters);
  }

  @override
  ResponseSetStickerPositionInSet respondFromJson(Map<String, dynamic> json) =>
      ResponseSetStickerPositionInSet.fromJson(json)..withRequest(this);
}
