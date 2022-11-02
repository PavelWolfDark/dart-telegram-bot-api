import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteChatStickerSet extends Request {
  RequestDeleteChatStickerSet(RequestParametersDeleteChatStickerSet parameters)
      : super(RequestMethod.deleteChatStickerSet, parameters);

  @override
  ResponseDeleteChatStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteChatStickerSet.fromJson(json)..withRequest(this);
}
