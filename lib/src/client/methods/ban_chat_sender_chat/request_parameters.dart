import '../../request_parameters.dart';

class RequestParametersBanChatSenderChat implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int senderChatId;

  RequestParametersBanChatSenderChat(
      {required this.chatId, required this.senderChatId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['sender_chat_id'] = senderChatId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['sender_chat_id'] = senderChatId.toString();
    return formData;
  }
}
