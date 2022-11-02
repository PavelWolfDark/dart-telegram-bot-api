import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultVenue extends InlineQueryResult {
  final double latitude;
  final double longitude;
  final String title;
  final String address;
  final String? foursquareId;
  final String? foursquareType;
  final String? googlePlaceId;
  final String? googlePlaceType;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;
  final String? thumbUrl;
  final int? thumbWidth;
  final int? thumbHeight;

  InlineQueryResultVenue(
      {required String id,
      required this.latitude,
      required this.longitude,
      required this.title,
      required this.address,
      this.foursquareId,
      this.foursquareType,
      this.googlePlaceId,
      this.googlePlaceType,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight})
      : super(type: InlineQueryResultType.venue, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['latitude'] = latitude;
    json['longitude'] = longitude;
    json['title'] = title;
    json['address'] = address;
    if (foursquareId != null) {
      json['foursquare_id'] = foursquareId;
    }
    if (foursquareType != null) {
      json['foursquare_type'] = foursquareType;
    }
    if (googlePlaceId != null) {
      json['google_place_id'] = googlePlaceId;
    }
    if (googlePlaceType != null) {
      json['google_place_type'] = googlePlaceType;
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
