import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberRestricted extends ChatMember {
  final bool isMember;
  final bool canChangeInfo;
  final bool canInviteUsers;
  final bool canPinMessages;
  final bool canSendMessages;
  final bool canSendMediaMessages;
  final bool canSendPolls;
  final bool canSendOtherMessages;
  final bool canAddWebPagePreviews;
  final int untilDate;

  ChatMemberRestricted(
      {required User user,
      required this.isMember,
      required this.canChangeInfo,
      required this.canInviteUsers,
      required this.canPinMessages,
      required this.canSendMessages,
      required this.canSendMediaMessages,
      required this.canSendPolls,
      required this.canSendOtherMessages,
      required this.canAddWebPagePreviews,
      required this.untilDate})
      : super(status: ChatMemberStatus.restricted, user: user);

  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberRestricted(
        user: user,
        isMember: json['is_member'],
        canChangeInfo: json['can_change_info'],
        canInviteUsers: json['can_invite_users'],
        canPinMessages: json['can_pin_messages'],
        canSendMessages: json['can_send_messages'],
        canSendMediaMessages: json['can_send_media_messages'],
        canSendPolls: json['can_send_polls'],
        canSendOtherMessages: json['can_send_other_messages'],
        canAddWebPagePreviews: json['can_add_web_page_previews'],
        untilDate: json['until_date']);
  }
}
