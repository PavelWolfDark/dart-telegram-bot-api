import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatStickerSet extends Request {
  RequestSetChatStickerSet(RequestParametersSetChatStickerSet parameters)
      : super(RequestMethod.setChatStickerSet, parameters);

  factory RequestSetChatStickerSet.create(
      {
      // int | String
      required Object chatId,
      required String stickerSetName}) {
    final requestParameters = RequestParametersSetChatStickerSet(
        chatId: chatId, stickerSetName: stickerSetName);
    return RequestSetChatStickerSet(requestParameters);
  }

  @override
  ResponseSetChatStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatStickerSet.fromJson(json)..withRequest(this);
}
