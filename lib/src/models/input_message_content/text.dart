import '../input_message_content.dart';
import '../message_entity.dart';

class InputTextMessageContent implements InputMessageContent {
  final String messageText;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? entities;
  final bool? disableWebPagePreview;

  InputTextMessageContent(
      {required this.messageText,
      this.parseMode,
      this.entities,
      this.disableWebPagePreview});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['message_text'] = messageText;
    if (parseMode != null) {
      json['parse_mode'] = parseMode;
    }
    if (entities != null) {
      List<Map<String, dynamic>> jsonEntities = [];
      for (final entity in entities!) {
        jsonEntities.add(entity.toJson());
      }
      json['entities'] = jsonEntities;
    }
    if (disableWebPagePreview != null) {
      json['disable_web_page_preview'] = disableWebPagePreview;
    }
    return json;
  }
}
