import 'reply_markup.dart';
import 'inline_keyboard_button.dart';

class InlineKeyboardMarkup implements ReplyMarkup {
  final List<List<InlineKeyboardButton>> inlineKeyboard;

  InlineKeyboardMarkup({required this.inlineKeyboard});

  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonInlineKeyboard = json['inline_keyboard'];
    List<List<InlineKeyboardButton>> inlineKeyboard = [];
    for (List<dynamic> jsonKeyboardRow in jsonInlineKeyboard) {
      List<InlineKeyboardButton> inlineKeyboardRow = [];
      for (Map<String, dynamic> jsonButton in jsonKeyboardRow) {
        inlineKeyboardRow.add(InlineKeyboardButton.fromJson(jsonButton));
      }
      inlineKeyboard.add(inlineKeyboardRow);
    }
    return InlineKeyboardMarkup(inlineKeyboard: inlineKeyboard);
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    List<List<Map<String, dynamic>>> jsonInlineKeyboard = [];
    for (final keyboardRow in inlineKeyboard) {
      List<Map<String, dynamic>> jsonKeyboardRow = [];
      for (final button in keyboardRow) {
        jsonKeyboardRow.add(button.toJson());
      }
      jsonInlineKeyboard.add(jsonKeyboardRow);
    }
    json['inline_keyboard'] = jsonInlineKeyboard;
    return json;
  }
}
