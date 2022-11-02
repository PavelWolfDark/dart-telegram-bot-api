import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberOwner extends ChatMember {
  final bool isAnonymous;
  final String? customTitle;

  ChatMemberOwner(
      {required User user, required this.isAnonymous, this.customTitle})
      : super(status: ChatMemberStatus.creator, user: user);

  factory ChatMemberOwner.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberOwner(
        user: user,
        isAnonymous: json['is_anonymous'],
        customTitle: json['custom_title']);
  }
}
