import 'chat.dart';
import 'user.dart';
import 'chat_invite_link.dart';

class ChatJoinRequest {
  final Chat chat;
  final User from;
  final int date;
  final String? bio;
  final ChatInviteLink? inviteLink;

  ChatJoinRequest(
      {required this.chat,
      required this.from,
      required this.date,
      this.bio,
      this.inviteLink});

  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) {
    final chat = Chat.fromJson(json['chat']);
    final from = User.fromJson(json['from']);
    Map<String, dynamic>? jsonInviteLink = json['invite_link'];
    ChatInviteLink? inviteLink;
    if (jsonInviteLink != null) {
      inviteLink = ChatInviteLink.fromJson(jsonInviteLink);
    }
    return ChatJoinRequest(
        chat: chat,
        from: from,
        date: json['date'],
        bio: json['bio'],
        inviteLink: inviteLink);
  }
}
