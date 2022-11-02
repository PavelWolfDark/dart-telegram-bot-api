import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberMember extends ChatMember {
  ChatMemberMember({required User user})
      : super(status: ChatMemberStatus.member, user: user);

  factory ChatMemberMember.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberMember(user: user);
  }
}
