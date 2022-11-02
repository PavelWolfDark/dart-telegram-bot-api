import 'location.dart';

class Venue {
  final Location location;
  final String title;
  final String address;
  final String? foursquareId;
  final String? foursquareType;
  final String? googlePlaceId;
  final String? googlePlaceType;

  Venue(
      {required this.location,
      required this.title,
      required this.address,
      this.foursquareId,
      this.foursquareType,
      this.googlePlaceId,
      this.googlePlaceType});

  factory Venue.fromJson(Map<String, dynamic> json) {
    final location = Location.fromJson(json['location']);
    return Venue(
        location: location,
        title: json['title'],
        address: json['address'],
        foursquareId: json['foursquare_id'],
        foursquareType: json['foursquare_type'],
        googlePlaceId: json['google_place_id'],
        googlePlaceType: json['google_place_type']);
  }
}
