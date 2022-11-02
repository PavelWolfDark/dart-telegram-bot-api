import 'user.dart';
import 'location.dart';

class InlineQuery {
  final String id;
  final User from;
  final String query;
  final String offset;
  // InlineQueryChatType
  final String? chatType;
  final Location? location;

  InlineQuery(
      {required this.id,
      required this.from,
      required this.query,
      required this.offset,
      this.chatType,
      this.location});

  factory InlineQuery.fromJson(Map<String, dynamic> json) {
    final from = User.fromJson(json['from']);
    Map<String, dynamic>? jsonLocation = json['location'];
    Location? location;
    if (jsonLocation != null) {
      location = Location.fromJson(jsonLocation);
    }
    return InlineQuery(
        id: json['id'],
        from: from,
        query: json['query'],
        offset: json['offset'],
        chatType: json['chat_type'],
        location: location);
  }
}
