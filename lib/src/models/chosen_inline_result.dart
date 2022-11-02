import 'user.dart';
import 'location.dart';

class ChosenInlineResult {
  final String resultId;
  final User from;
  final Location? location;
  final String? inlineMessageId;
  final String query;

  ChosenInlineResult(
      {required this.resultId,
      required this.from,
      this.location,
      this.inlineMessageId,
      required this.query});

  factory ChosenInlineResult.fromJson(Map<String, dynamic> json) {
    final from = User.fromJson(json['from']);
    Map<String, dynamic>? jsonLocation = json['location'];
    Location? location;
    if (jsonLocation != null) {
      location = Location.fromJson(jsonLocation);
    }
    return ChosenInlineResult(
        resultId: json['result_id'],
        from: from,
        location: location,
        inlineMessageId: json['inline_message_id'],
        query: json['query']);
  }
}
