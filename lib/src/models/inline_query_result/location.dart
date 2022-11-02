import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultLocation extends InlineQueryResult {
  final double latitude;
  final double longitude;
  final String title;
  final double? horizontalAccuracy;
  final int? livePeriod;
  final int? heading;
  final int? proximityAlertRadius;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultLocation(
      {required String id,
      required this.latitude,
      required this.longitude,
      required this.title,
      this.horizontalAccuracy,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.location, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['latitude'] = latitude;
    json['longitude'] = longitude;
    json['title'] = title;
    if (horizontalAccuracy != null) {
      json['horizontal_accuracy'] = horizontalAccuracy;
    }
    if (livePeriod != null) {
      json['live_period'] = livePeriod;
    }
    if (heading != null) {
      json['heading'] = heading;
    }
    if (proximityAlertRadius != null) {
      json['proximity_alert_radius'] = proximityAlertRadius;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    return json;
  }
}
