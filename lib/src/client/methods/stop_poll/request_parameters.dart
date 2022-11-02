import 'dart:convert';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersStopPoll implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int messageId;
  final InlineKeyboardMarkup? replyMarkup;

  RequestParametersStopPoll(
      {required this.chatId, required this.messageId, this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['message_id'] = messageId;
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['message_id'] = messageId.toString();
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
