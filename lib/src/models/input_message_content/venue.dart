import '../input_message_content.dart';

class InputVenueMessageContent implements InputMessageContent {
  final double latitude;
  final double longitude;
  final String title;
  final String address;
  final String? foursquareId;
  final String? foursquareType;
  final String? googlePlaceId;
  final String? googlePlaceType;

  InputVenueMessageContent(
      {required this.latitude,
      required this.longitude,
      required this.title,
      required this.address,
      this.foursquareId,
      this.foursquareType,
      this.googlePlaceId,
      this.googlePlaceType});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
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
    return json;
  }
}
