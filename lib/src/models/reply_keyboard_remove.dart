import 'reply_markup.dart';

class ReplyKeyboardRemove implements ReplyMarkup {
  final removeKeyboard = true;
  final bool? selective;

  ReplyKeyboardRemove({this.selective});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['remove_keyboard'] = removeKeyboard;
    if (selective != null) {
      json['selective'] = selective;
    }
    return json;
  }
} 