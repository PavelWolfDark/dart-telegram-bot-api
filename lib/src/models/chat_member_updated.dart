import 'chat.dart';
import 'user.dart';
import 'chat_member.dart';
import 'chat_invite_link.dart';

class ChatMemberUpdated {
  final Chat chat;
  final User from;
  final int date;
  final ChatMember oldChatMember;
  final ChatMember newChatMember;
  final ChatInviteLink? inviteLink;

  ChatMemberUpdated(
      {required this.chat,
      required this.from,
      required this.date,
      required this.oldChatMember,
      required this.newChatMember,
      this.inviteLink});

  factory ChatMemberUpdated.fromJson(Map<String, dynamic> json) {
    final chat = Chat.fromJson(json['chat']);
    final from = User.fromJson(json['from']);
    final oldChatMember = ChatMember.fromJson(json['old_chat_member']);
    final newChatMember = ChatMember.fromJson(json['new_chat_member']);
    Map<String, dynamic>? jsonInviteLink = json['invite_link'];
    ChatInviteLink? inviteLink;
    if (jsonInviteLink != null) {
      inviteLink = ChatInviteLink.fromJson(jsonInviteLink);
    }
    return ChatMemberUpdated(
        chat: chat,
        from: from,
        date: json['date'],
        oldChatMember: oldChatMember,
        newChatMember: newChatMember,
        inviteLink: inviteLink);
  }
}
