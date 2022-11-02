import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../input_message_content.dart';
import '../inline_keyboard_markup.dart';

class InlineQueryResultArticle extends InlineQueryResult {
  final String title;
  final InputMessageContent inputMessageContent;
  final InlineKeyboardMarkup? replyMarkup;
  final String? url;
  final bool? hideUrl;
  final String? description;
  final String? thumbUrl;
  final int? thumbWidth;
  final int? thumbHeight;

  InlineQueryResultArticle(
      {required String id,
      required this.title,
      required this.inputMessageContent,
      this.replyMarkup,
      this.url,
      this.hideUrl,
      this.description,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight})
      : super(type: InlineQueryResultType.article, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['title'] = title;
    json['input_message_content'] = inputMessageContent.toJson();
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (url != null) {
      json['url'] = url;
    }
    if (hideUrl != null) {
      json['hide_url'] = hideUrl;
    }
    if (description != null) {
      json['description'] = description;
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
