import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetStickerPositionInSet extends Request {
  RequestSetStickerPositionInSet(
      RequestParametersSetStickerPositionInSet parameters)
      : super(RequestMethod.setStickerPositionInSet, parameters);

  @override
  ResponseSetStickerPositionInSet respondFromJson(Map<String, dynamic> json) =>
      ResponseSetStickerPositionInSet.fromJson(json)..withRequest(this);
}
