import 'chat_photo.dart';
import 'message.dart';
import 'chat_permissions.dart';
import 'chat_location.dart';

class Chat {
  final int id;
  // ChatType
  final String type;
  final String? title;
  final String? username;
  final String? firstName;
  final String? lastName;
  final bool? isForum;
  final ChatPhoto? photo;
  final List<String>? activeUsernames;
  final String? emojiStatusCustomEmojiId;
  final String? bio;
  final bool? hasPrivateForwards;
  final bool? hasRestrictedVoiceAndVideoMessages;
  final bool? joinToSendMessages;
  final bool? joinByRequest;
  final String? description;
  final String? inviteLink;
  final Message? pinnedMessage;
  final ChatPermissions? permissions;
  final int? slowModeDelay;
  final int? messageAutoDeleteTime;
  final bool? hasProtectedContent;
  final String? stickerSetName;
  final bool? canSetStickerSet;
  final int? linkedChatId;
  final ChatLocation? location;

  Chat(
      {required this.id,
      required this.type,
      this.title,
      this.username,
      this.firstName,
      this.lastName,
      this.isForum,
      this.photo,
      this.activeUsernames,
      this.emojiStatusCustomEmojiId,
      this.bio,
      this.hasPrivateForwards,
      this.hasRestrictedVoiceAndVideoMessages,
      this.joinToSendMessages,
      this.joinByRequest,
      this.description,
      this.inviteLink,
      this.pinnedMessage,
      this.permissions,
      this.slowModeDelay,
      this.messageAutoDeleteTime,
      this.hasProtectedContent,
      this.stickerSetName,
      this.canSetStickerSet,
      this.linkedChatId,
      this.location});

  factory Chat.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonPhoto = json['photo'];
    ChatPhoto? photo;
    if (jsonPhoto != null) {
      photo = ChatPhoto.fromJson(jsonPhoto);
    }
    List<String>? jsonActiveUsernames = json['active_usernames'];
    List<String>? activeUsernames;
    if (jsonActiveUsernames != null) {
      activeUsernames = [...jsonActiveUsernames];
    }
    Map<String, dynamic>? jsonPinnedMessage = json['pinned_message'];
    Message? pinnedMessage;
    if (jsonPinnedMessage != null) {
      pinnedMessage = Message.fromJson(jsonPinnedMessage);
    }
    Map<String, dynamic>? jsonPermissions = json['permissions'];
    ChatPermissions? permissions;
    if (jsonPermissions != null) {
      permissions = ChatPermissions.fromJson(jsonPermissions);
    }
    Map<String, dynamic>? jsonLocation = json['location'];
    ChatLocation? location;
    if (jsonLocation != null) {
      location = ChatLocation.fromJson(jsonLocation);
    }
    return Chat(
        id: json['id'],
        type: json['type'],
        title: json['title'],
        username: json['username'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        isForum: json['is_forum'],
        photo: photo,
        activeUsernames: activeUsernames,
        emojiStatusCustomEmojiId: json['emoji_status_custom_emoji_id'],
        bio: json['bio'],
        hasPrivateForwards: json['has_private_forwards'],
        hasRestrictedVoiceAndVideoMessages:
            json['has_restricted_voice_and_video_messages'],
        joinToSendMessages: json['join_to_send_messages'],
        joinByRequest: json['join_by_request'],
        description: json['description'],
        inviteLink: json['invite_link'],
        pinnedMessage: pinnedMessage,
        permissions: permissions,
        slowModeDelay: json['slow_mode_delay'],
        messageAutoDeleteTime: json['message_auto_delete_time'],
        hasProtectedContent: json['has_protected_content'],
        stickerSetName: json['sticker_set_name'],
        canSetStickerSet: json['can_set_sticker_set'],
        linkedChatId: json['linked_chat_id'],
        location: location);
  }
}
