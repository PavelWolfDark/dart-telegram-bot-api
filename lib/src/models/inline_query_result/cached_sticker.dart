import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultCachedSticker extends InlineQueryResult {
  final String stickerFileId;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultCachedSticker(
      {required String id,
      required this.stickerFileId,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.sticker, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['sticker_file_id'] = stickerFileId;
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    return json;
  }
}
