import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../inline_keyboard_markup.dart';

class InlineQueryResultGame extends InlineQueryResult {
  final String gameShortName;
  final InlineKeyboardMarkup? replyMarkup;

  InlineQueryResultGame({
    required String id,
    required this.gameShortName,
    this.replyMarkup,
  }) : super(type: InlineQueryResultType.game, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['game_short_name'] = gameShortName;
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }
}
