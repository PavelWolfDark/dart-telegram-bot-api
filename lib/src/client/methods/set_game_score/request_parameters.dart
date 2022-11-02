import '../../request_parameters.dart';

class RequestParametersSetGameScore implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object? chatId;
  final int? messageId;
  final String? inlineMessageId;
  final int userId;
  final int score;
  final bool? force;
  final bool? disableEditMessage;

  RequestParametersSetGameScore(
      {this.chatId,
      this.messageId,
      this.inlineMessageId,
      required this.userId,
      required this.score,
      this.force,
      this.disableEditMessage});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (chatId != null) {
      json['chat_id'] = chatId;
    }
    if (messageId != null) {
      json['message_id'] = messageId;
    }
    if (inlineMessageId != null) {
      json['inline_message_id'] = inlineMessageId;
    }
    json['user_id'] = userId;
    json['score'] = score;
    if (force != null) {
      json['force'] = force;
    }
    if (disableEditMessage != null) {
      json['disable_edit_message'] = disableEditMessage;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    if (messageId != null) {
      formData['message_id'] = messageId.toString();
    }
    if (inlineMessageId != null) {
      formData['inline_message_id'] = inlineMessageId!;
    }
    formData['user_id'] = userId.toString();
    formData['score'] = score.toString();
    if (force != null) {
      formData['force'] = force.toString();
    }
    if (disableEditMessage != null) {
      formData['disable_edit_message'] = disableEditMessage.toString();
    }
    return formData;
  }
}
