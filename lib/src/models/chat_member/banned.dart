import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberBanned extends ChatMember {
  final int untilDate;

  ChatMemberBanned({required User user, required this.untilDate})
      : super(status: ChatMemberStatus.kicked, user: user);

  factory ChatMemberBanned.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberBanned(user: user, untilDate: json['until_date']);
  }
}
