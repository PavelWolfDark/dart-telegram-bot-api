import '../../request_parameters.dart';

class RequestParametersPromoteChatMember implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;
  final bool? isAnonymous;
  final bool? canManageChat;
  final bool? canPostMessages;
  final bool? canEditMessages;
  final bool? canDeleteMessages;
  final bool? canManageVideoChats;
  final bool? canRestrictMembers;
  final bool? canPromoteMembers;
  final bool? canChangeInfo;
  final bool? canInviteUsers;
  final bool? canPinMessages;
  final bool? canManageTopics;

  RequestParametersPromoteChatMember(
      {required this.chatId,
      required this.userId,
      this.isAnonymous,
      this.canManageChat,
      this.canPostMessages,
      this.canEditMessages,
      this.canDeleteMessages,
      this.canManageVideoChats,
      this.canRestrictMembers,
      this.canPromoteMembers,
      this.canChangeInfo,
      this.canInviteUsers,
      this.canPinMessages,
      this.canManageTopics});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    if (isAnonymous != null) {
      json['is_anonymous'] = isAnonymous;
    }
    if (canManageChat != null) {
      json['can_manage_chat'] = canManageChat;
    }
    if (canPostMessages != null) {
      json['can_post_messages'] = canPostMessages;
    }
    if (canEditMessages != null) {
      json['can_edit_messages'] = canEditMessages;
    }
    if (canDeleteMessages != null) {
      json['can_delete_messages'] = canDeleteMessages;
    }
    if (canManageVideoChats != null) {
      json['can_manage_video_chats'] = canManageVideoChats;
    }
    if (canRestrictMembers != null) {
      json['can_restrict_members'] = canRestrictMembers;
    }
    if (canPromoteMembers != null) {
      json['can_promote_members'] = canPromoteMembers;
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

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    if (isAnonymous != null) {
      formData['is_anonymous'] = isAnonymous.toString();
    }
    if (canManageChat != null) {
      formData['can_manage_chat'] = canManageChat.toString();
    }
    if (canPostMessages != null) {
      formData['can_post_messages'] = canPostMessages.toString();
    }
    if (canEditMessages != null) {
      formData['can_edit_messages'] = canEditMessages.toString();
    }
    if (canDeleteMessages != null) {
      formData['can_delete_messages'] = canDeleteMessages.toString();
    }
    if (canManageVideoChats != null) {
      formData['can_manage_video_chats'] = canManageVideoChats.toString();
    }
    if (canRestrictMembers != null) {
      formData['can_restrict_members'] = canRestrictMembers.toString();
    }
    if (canPromoteMembers != null) {
      formData['can_promote_members'] = canPromoteMembers.toString();
    }
    if (canChangeInfo != null) {
      formData['can_change_info'] = canChangeInfo.toString();
    }
    if (canInviteUsers != null) {
      formData['can_invite_users'] = canInviteUsers.toString();
    }
    if (canPinMessages != null) {
      formData['can_pin_messages'] = canPinMessages.toString();
    }
    if (canManageTopics != null) {
      formData['can_manage_topics'] = canManageTopics.toString();
    }
    return formData;
  }
}
