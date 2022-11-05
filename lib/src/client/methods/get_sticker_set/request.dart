import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetStickerSet extends Request {
  RequestGetStickerSet(RequestParametersGetStickerSet parameters)
      : super(RequestMethod.getStickerSet, parameters);

  factory RequestGetStickerSet.create({required String name}) {
    final requestParameters = RequestParametersGetStickerSet(name: name);
    return RequestGetStickerSet(requestParameters);
  }

  @override
  ResponseGetStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseGetStickerSet.fromJson(json)..withRequest(this);
}
