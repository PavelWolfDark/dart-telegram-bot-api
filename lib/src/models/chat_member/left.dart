import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberLeft extends ChatMember {
  ChatMemberLeft({required User user})
      : super(status: ChatMemberStatus.left, user: user);

  factory ChatMemberLeft.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberLeft(user: user);
  }
}
