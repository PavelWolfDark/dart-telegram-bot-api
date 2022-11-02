import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatStickerSet extends Request {
  RequestSetChatStickerSet(RequestParametersSetChatStickerSet parameters)
      : super(RequestMethod.setChatStickerSet, parameters);

  @override
  ResponseSetChatStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatStickerSet.fromJson(json)..withRequest(this);
}
