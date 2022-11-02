import '../../request_parameters.dart';

class RequestParametersSetChatStickerSet implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String stickerSetName;

  RequestParametersSetChatStickerSet(
      {required this.chatId, required this.stickerSetName});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['sticker_set_name'] = stickerSetName;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['sticker_set_name'] = stickerSetName;
    return formData;
  }
}
