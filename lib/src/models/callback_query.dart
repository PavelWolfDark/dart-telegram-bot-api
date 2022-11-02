import 'user.dart';
import 'message.dart';

class CallbackQuery {
  final String id;
  final User from;
  final Message? message;
  final String? inlineMessageId;
  final String chatInstance;
  final String? data;
  final String? gameShortName;

  CallbackQuery(
      {required this.id,
      required this.from,
      this.message,
      this.inlineMessageId,
      required this.chatInstance,
      this.data,
      this.gameShortName});

  factory CallbackQuery.fromJson(Map<String, dynamic> json) {
    final from = User.fromJson(json['from']);
    Map<String, dynamic>? jsonMessage = json['message'];
    Message? message;
    if (jsonMessage != null) {
      message = Message.fromJson(jsonMessage);
    }
    return CallbackQuery(
        id: json['id'],
        from: from,
        message: message,
        inlineMessageId: json['inline_message_id'],
        chatInstance: json['chat_instance'],
        data: json['data'],
        gameShortName: json['game_short_name']);
  }
}
