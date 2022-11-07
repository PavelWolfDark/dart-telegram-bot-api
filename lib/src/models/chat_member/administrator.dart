import '../../constants/chat_member_status.dart';
import '../chat_member.dart';
import '../user.dart';

class ChatMemberAdministrator extends ChatMember {
  final bool canBeEdited;
  final bool isAnonymous;
  final bool canManageChat;
  final bool canDeleteMessages;
  final bool canManageVideoChats;
  final bool canRestrictMembers;
  final bool canPromoteMembers;
  final bool canChangeInfo;
  final bool canInviteUsers;
  final bool? canPostMessages;
  final bool? canEditMessages;
  final bool? canPinMessages;
  final bool? canManageTopics;
  final String? customTitle;

  ChatMemberAdministrator(
      {required User user,
      required this.canBeEdited,
      required this.isAnonymous,
      required this.canManageChat,
      required this.canDeleteMessages,
      required this.canManageVideoChats,
      required this.canRestrictMembers,
      required this.canPromoteMembers,
      required this.canChangeInfo,
      required this.canInviteUsers,
      this.canPostMessages,
      this.canEditMessages,
      this.canPinMessages,
      this.canManageTopics,
      this.customTitle})
      : super(status: ChatMemberStatus.administrator, user: user);

  factory ChatMemberAdministrator.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return ChatMemberAdministrator(
        user: user,
        canBeEdited: json['can_be_edited'],
        isAnonymous: json['is_anonymous'],
        canManageChat: json['can_manage_chat'],
        canDeleteMessages: json['can_delete_messages'],
        canManageVideoChats: json['can_manage_video_chats'],
        canRestrictMembers: json['can_restrict_members'],
        canPromoteMembers: json['can_promote_members'],
        canChangeInfo: json['can_change_info'],
        canInviteUsers: json['can_invite_users'],
        canPostMessages: json['can_post_messages'],
        canEditMessages: json['can_edit_messages'],
        canPinMessages: json['can_pin_messages'],
        canManageTopics: json['can_manage_topics'],
        customTitle: json['custom_title']);
  }
}
