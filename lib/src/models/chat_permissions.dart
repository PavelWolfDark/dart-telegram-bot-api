class ChatPermissions {
  final bool? canSendMessages;
  final bool? canSendMediaMessages;
  final bool? canSendPolls;
  final bool? canSendOtherMessages;
  final bool? canAddWebPagePreviews;
  final bool? canChangeInfo;
  final bool? canInviteUsers;
  final bool? canPinMessages;
  final bool? canManageTopics;

  ChatPermissions(
      {this.canSendMessages,
      this.canSendMediaMessages,
      this.canSendPolls,
      this.canSendOtherMessages,
      this.canAddWebPagePreviews,
      this.canChangeInfo,
      this.canInviteUsers,
      this.canPinMessages,
      this.canManageTopics});

  factory ChatPermissions.fromJson(Map<String, dynamic> json) =>
      ChatPermissions(
          canSendMessages: json['can_send_messages'],
          canSendMediaMessages: json['can_send_media_messages'],
          canSendPolls: json['can_send_polls'],
          canSendOtherMessages: json['can_send_other_messages'],
          canAddWebPagePreviews: json['can_add_web_page_previews'],
          canChangeInfo: json['can_change_info'],
          canInviteUsers: json['can_invite_users'],
          canPinMessages: json['can_pin_messages'],
          canManageTopics: json['can_manage_topics']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (canSendMessages != null) {
      json['can_send_messages'] = canSendMessages;
    }
    if (canSendMediaMessages != null) {
      json['can_send_media_messages'] = canSendMediaMessages;
    }
    if (canSendPolls != null) {
      json['can_send_polls'] = canSendPolls;
    }
    if (canSendOtherMessages != null) {
      json['can_send_other_messages'] = canSendOtherMessages;
    }
    if (canAddWebPagePreviews != null) {
      json['can_add_web_page_previews'] = canAddWebPagePreviews;
    }
    if (canChangeInfo != null) {
      json['can_change_info'] = canChangeInfo;
    }
    if (canInviteUsers != null) {
      json['can_invite_users'] = canInviteUsers;
    }
    if (canPinMessages != null) {
      json['can_pin_messages'] = canPinMessages;
    }
    if (canManageTopics != null) {
      json['can_manage_topics'] = canManageTopics;
    }
    return json;
  }
}
