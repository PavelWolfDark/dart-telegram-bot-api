import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetStickerSet extends Request {
  RequestGetStickerSet(RequestParametersGetStickerSet parameters)
      : super(RequestMethod.getStickerSet, parameters);

  @override
  ResponseGetStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseGetStickerSet.fromJson(json)..withRequest(this);
}
