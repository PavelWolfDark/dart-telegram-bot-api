import '../constants/chat_member_status.dart';
import 'user.dart';
import 'chat_member/owner.dart';
import 'chat_member/administrator.dart';
import 'chat_member/member.dart';
import 'chat_member/restricted.dart';
import 'chat_member/left.dart';
import 'chat_member/banned.dart';

class ChatMember {
  // ChatMemberStatus
  final String status;
  final User user;

  ChatMember({required this.status, required this.user});

  factory ChatMember.fromJson(Map<String, dynamic> json) {
    switch (json['status']) {
      case ChatMemberStatus.creator:
        return ChatMemberOwner.fromJson(json);
      case ChatMemberStatus.administrator:
        return ChatMemberAdministrator.fromJson(json);
      case ChatMemberStatus.member:
        return ChatMemberMember.fromJson(json);
      case ChatMemberStatus.restricted:
        return ChatMemberRestricted.fromJson(json);
      case ChatMemberStatus.left:
        return ChatMemberLeft.fromJson(json);
      case ChatMemberStatus.kicked:
        return ChatMemberBanned.fromJson(json);
      default:
        throw TypeError();
    }
  }
}
