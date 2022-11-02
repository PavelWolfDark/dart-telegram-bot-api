import 'location.dart';

class ChatLocation {
  final Location location;
  final String address;

  ChatLocation({required this.location, required this.address});

  factory ChatLocation.fromJson(Map<String, dynamic> json) {
    final location = Location.fromJson(json['location']);
    return ChatLocation(location: location, address: json['address']);
  }
}
