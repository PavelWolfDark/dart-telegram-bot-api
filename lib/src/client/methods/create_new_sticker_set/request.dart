import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateNewStickerSet extends Request {
  RequestCreateNewStickerSet(RequestParametersCreateNewStickerSet parameters)
      : super(RequestMethod.createNewStickerSet, parameters);

  @override
  ResponseCreateNewStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateNewStickerSet.fromJson(json)..withRequest(this);
}
