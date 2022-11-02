import 'user.dart';

class ProximityAlertTriggered {
  final User traveler;
  final User watcher;
  final int distance;

  ProximityAlertTriggered(
      {required this.traveler, required this.watcher, required this.distance});

  factory ProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    final traveler = User.fromJson(json['traveler']);
    final watcher = User.fromJson(json['watcher']);
    return ProximityAlertTriggered(
        traveler: traveler, watcher: watcher, distance: json['distance']);
  }
}
