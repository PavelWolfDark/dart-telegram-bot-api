import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteChatStickerSet extends Request {
  RequestDeleteChatStickerSet(RequestParametersDeleteChatStickerSet parameters)
      : super(RequestMethod.deleteChatStickerSet, parameters);

  factory RequestDeleteChatStickerSet.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersDeleteChatStickerSet(chatId: chatId);
    return RequestDeleteChatStickerSet(requestParameters);
  }

  @override
  ResponseDeleteChatStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteChatStickerSet.fromJson(json)..withRequest(this);
}
