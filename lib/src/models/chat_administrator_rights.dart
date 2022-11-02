class ChatAdministratorRights {
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

  ChatAdministratorRights(
      {required this.isAnonymous,
      required this.canManageChat,
      required this.canDeleteMessages,
      required this.canManageVideoChats,
      required this.canRestrictMembers,
      required this.canPromoteMembers,
      required this.canChangeInfo,
      required this.canInviteUsers,
      this.canPostMessages,
      this.canEditMessages,
      this.canPinMessages});

  factory ChatAdministratorRights.fromJson(Map<String, dynamic> json) =>
      ChatAdministratorRights(
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
          canPinMessages: json['can_pin_messages']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['is_anonymous'] = isAnonymous;
    json['can_manage_chat'] = canManageChat;
    json['can_delete_messages'] = canDeleteMessages;
    json['can_manage_video_chats'] = canManageVideoChats;
    json['can_restrict_members'] = canRestrictMembers;
    json['can_promote_members'] = canPromoteMembers;
    json['can_change_info'] = canChangeInfo;
    json['can_invite_users'] = canInviteUsers;
    if (canPostMessages != null) {
      json['can_post_messages'] = canPostMessages;
    }
    if (canEditMessages != null) {
      json['can_edit_messages'] = canEditMessages;
    }
    if (canPinMessages != null) {
      json['can_pin_messages'] = canPinMessages;
    }
    return json;
  }
}
