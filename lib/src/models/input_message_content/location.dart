import '../input_message_content.dart';

class InputLocationMessageContent implements InputMessageContent {
  final double latitude;
  final double longitude;
  final double? horizontalAccuracy;
  final int? livePeriod;
  final int? heading;
  final int? proximityAlertRadius;

  InputLocationMessageContent(
      {required this.latitude,
      required this.longitude,
      this.horizontalAccuracy,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['latitude'] = latitude;
    json['longitude'] = longitude;
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
    return json;
  }
}
