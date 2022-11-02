import 'reply_markup.dart';

class ForceReply implements ReplyMarkup {
  final forceReply = true;
  final String? inputFieldPlaceholder;
  final bool? selective;

  ForceReply({this.inputFieldPlaceholder, this.selective});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['force_reply'] = forceReply;
    if (inputFieldPlaceholder != null) {
      json['input_field_placeholder'] = inputFieldPlaceholder;
    }
    if (selective != null) {
      json['selective'] = selective;
    }
    return json;
  }
}
