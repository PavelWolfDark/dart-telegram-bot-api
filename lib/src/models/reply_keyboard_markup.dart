import 'reply_markup.dart';
import 'keyboard_button.dart';

class ReplyKeyboardMarkup implements ReplyMarkup {
  final List<List<KeyboardButton>> keyboard;
  final bool? resizeKeyboard;
  final bool? oneTimeKeyboard;
  final String? inputFieldPlaceholder;
  final bool? selective;

  ReplyKeyboardMarkup(
      {required this.keyboard,
      this.resizeKeyboard,
      this.oneTimeKeyboard,
      this.inputFieldPlaceholder,
      this.selective});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    List<List<Map<String, dynamic>>> jsonKeyboard = [];
    for (final keyboardRow in keyboard) {
      List<Map<String, dynamic>> jsonKeyboardRow = [];
      for (final button in keyboardRow) {
        jsonKeyboardRow.add(button.toJson());
      }
      jsonKeyboard.add(jsonKeyboardRow);
    }
    json['keyboard'] = jsonKeyboard;
    if (resizeKeyboard != null) {
      json['resize_keyboard'] = resizeKeyboard;
    }
    if (oneTimeKeyboard != null) {
      json['one_time_keyboard'] = oneTimeKeyboard;
    }
    if (inputFieldPlaceholder != null) {
      json['input_field_placeholder'] = inputFieldPlaceholder;
    }
    if (selective != null) {
      json['selective'] = selective;
    }
    return json;
  }
}
