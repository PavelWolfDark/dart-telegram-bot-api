class Location {
  final double longitude;
  final double latitude;
  final double? horizontalAccuracy;
  final int? livePeriod;
  final int? heading;
  final int? proximityAlertRadius;

  Location(
      {required this.longitude,
      required this.latitude,
      this.horizontalAccuracy,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
      longitude: json['longitude'],
      latitude: json['latitude'],
      horizontalAccuracy: json['horizontal_accuracy'],
      livePeriod: json['live_period'],
      heading: json['heading'],
      proximityAlertRadius: json['proximity_alert_radius']);
}
