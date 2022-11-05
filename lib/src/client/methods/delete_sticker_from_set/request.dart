import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteStickerFromSet extends Request {
  RequestDeleteStickerFromSet(RequestParametersDeleteStickerFromSet parameters)
      : super(RequestMethod.deleteStickerFromSet, parameters);

  factory RequestDeleteStickerFromSet.create({required String sticker}) {
    final requestParameters =
        RequestParametersDeleteStickerFromSet(sticker: sticker);
    return RequestDeleteStickerFromSet(requestParameters);
  }

  @override
  ResponseDeleteStickerFromSet respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteStickerFromSet.fromJson(json)..withRequest(this);
}
