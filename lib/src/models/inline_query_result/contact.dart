import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultContact extends InlineQueryResult {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final String? vcard;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;
  final String? thumbUrl;
  final int? thumbWidth;
  final int? thumbHeight;

  InlineQueryResultContact(
      {required String id,
      required this.phoneNumber,
      required this.firstName,
      this.lastName,
      this.vcard,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight})
      : super(type: InlineQueryResultType.contact, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['phone_number'] = phoneNumber;
    json['first_name'] = firstName;
    if (lastName != null) {
      json['last_name'] = lastName;
    }
    if (vcard != null) {
      json['vcard'] = vcard;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    if (thumbUrl != null) {
      json['thumb_url'] = thumbUrl;
    }
    if (thumbWidth != null) {
      json['thumb_width'] = thumbWidth;
    }
    if (thumbHeight != null) {
      json['thumb_height'] = thumbHeight;
    }
    return json;
  }
}
