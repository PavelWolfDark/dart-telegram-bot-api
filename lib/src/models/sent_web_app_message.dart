import 'package:telegram_bot_api/telegram_bot_api.dart';

class SentWebAppMessage {
  final String? inlineMessageId;

  SentWebAppMessage({this.inlineMessageId});

  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) =>
      SentWebAppMessage(inlineMessageId: json['inline_message_id']);
}
