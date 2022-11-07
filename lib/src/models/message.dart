import 'user.dart';
import 'chat.dart';
import 'message_entity.dart';
import 'animation.dart';
import 'audio.dart';
import 'document.dart';
import 'photo_size.dart';
import 'sticker.dart';
import 'video.dart';
import 'video_note.dart';
import 'voice.dart';
import 'contact.dart';
import 'dice.dart';
import 'game.dart';
import 'poll.dart';
import 'venue.dart';
import 'location.dart';
import 'message_auto_delete_timer_changed.dart';
import 'invoice.dart';
import 'successful_payment.dart';
import 'passport_data.dart';
import 'proximity_alert_triggered.dart';
import 'forum_topic_created.dart';
import 'forum_topic_closed.dart';
import 'forum_topic_reopened.dart';
import 'video_chat_scheduled.dart';
import 'video_chat_started.dart';
import 'video_chat_ended.dart';
import 'video_chat_participants_invited.dart';
import 'web_app_data.dart';
import 'inline_keyboard_markup.dart';

class Message {
  final int messageId;
  final int? messageThreadId;
  final User? from;
  final Chat? senderChat;
  final int date;
  final Chat chat;
  final User? forwardFrom;
  final Chat? forwardFromChat;
  final int? forwardFromMessageId;
  final String? forwardSignature;
  final String? forwardSenderName;
  final int? forwardDate;
  final bool? isTopicMessage;
  final bool? isAutomaticForward;
  final Message? replyToMessage;
  final User? viaBot;
  final int? editDate;
  final bool? hasProtectedContent;
  final String? mediaGroupId;
  final String? authorSignature;
  final String? text;
  final List<MessageEntity>? entities;
  final Animation? animation;
  final Audio? audio;
  final Document? document;
  final List<PhotoSize>? photo;
  final Sticker? sticker;
  final Video? video;
  final VideoNote? videoNote;
  final Voice? voice;
  final String? caption;
  final List<MessageEntity>? captionEntities;
  final Contact? contact;
  final Dice? dice;
  final Game? game;
  final Poll? poll;
  final Venue? venue;
  final Location? location;
  final List<User>? newChatMembers;
  final User? leftChatMember;
  final String? newChatTitle;
  final List<PhotoSize>? newChatPhoto;
  final bool? deleteChatPhoto;
  final bool? groupChatCreated;
  final bool? supergroupChatCreated;
  final bool? channelChatCreated;
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;
  final int? migrateToChatId;
  final int? migrateFromChatId;
  final Message? pinnedMessage;
  final Invoice? invoice;
  final SuccessfulPayment? successfulPayment;
  final String? connectedWebsite;
  final PassportData? passportData;
  final ProximityAlertTriggered? proximityAlertTriggered;
  final ForumTopicCreated? forumTopicCreated;
  final ForumTopicClosed? forumTopicClosed;
  final ForumTopicReopened? forumTopicReopened;
  final VideoChatScheduled? videoChatScheduled;
  final VideoChatStarted? videoChatStarted;
  final VideoChatEnded? videoChatEnded;
  final VideoChatParticipantsInvited? videoChatParticipantsInvited;
  final WebAppData? webAppData;
  final InlineKeyboardMarkup? replyMarkup;

  Message(
      {required this.messageId,
      this.messageThreadId,
      this.from,
      this.senderChat,
      required this.date,
      required this.chat,
      this.forwardFrom,
      this.forwardFromChat,
      this.forwardFromMessageId,
      this.forwardSignature,
      this.forwardSenderName,
      this.forwardDate,
      this.isTopicMessage,
      this.isAutomaticForward,
      this.replyToMessage,
      this.viaBot,
      this.editDate,
      this.hasProtectedContent,
      this.mediaGroupId,
      this.authorSignature,
      this.text,
      this.entities,
      this.animation,
      this.audio,
      this.document,
      this.photo,
      this.sticker,
      this.video,
      this.videoNote,
      this.voice,
      this.caption,
      this.captionEntities,
      this.contact,
      this.dice,
      this.game,
      this.poll,
      this.venue,
      this.location,
      this.newChatMembers,
      this.leftChatMember,
      this.newChatTitle,
      this.newChatPhoto,
      this.deleteChatPhoto,
      this.groupChatCreated,
      this.supergroupChatCreated,
      this.channelChatCreated,
      this.messageAutoDeleteTimerChanged,
      this.migrateToChatId,
      this.migrateFromChatId,
      this.pinnedMessage,
      this.invoice,
      this.successfulPayment,
      this.connectedWebsite,
      this.passportData,
      this.proximityAlertTriggered,
      this.forumTopicCreated,
      this.forumTopicClosed,
      this.forumTopicReopened,
      this.videoChatScheduled,
      this.videoChatStarted,
      this.videoChatEnded,
      this.videoChatParticipantsInvited,
      this.webAppData,
      this.replyMarkup});

  factory Message.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonFrom = json['from'];
    User? from;
    if (jsonFrom != null) {
      from = User.fromJson(jsonFrom);
    }
    Map<String, dynamic>? jsonSenderChat = json['sender_chat'];
    Chat? senderChat;
    if (jsonSenderChat != null) {
      senderChat = Chat.fromJson(jsonSenderChat);
    }
    final chat = Chat.fromJson(json['chat']);
    Map<String, dynamic>? jsonForwardFrom = json['forward_from'];
    User? forwardFrom;
    if (jsonForwardFrom != null) {
      forwardFrom = User.fromJson(jsonForwardFrom);
    }
    Map<String, dynamic>? jsonForwardFromChat = json['forward_from_chat'];
    Chat? forwardFromChat;
    if (jsonForwardFromChat != null) {
      forwardFromChat = Chat.fromJson(jsonForwardFromChat);
    }
    Map<String, dynamic>? jsonReplyToMessage = json['reply_to_message'];
    Message? replyToMessage;
    if (jsonReplyToMessage != null) {
      replyToMessage = Message.fromJson(jsonReplyToMessage);
    }
    Map<String, dynamic>? jsonViaBot = json['via_bot'];
    User? viaBot;
    if (jsonViaBot != null) {
      viaBot = User.fromJson(jsonViaBot);
    }
    List<dynamic>? jsonEntities = json['entities'];
    List<MessageEntity>? entities;
    if (jsonEntities != null) {
      entities = [];
      for (Map<String, dynamic> jsonEntity in jsonEntities) {
        entities.add(MessageEntity.fromJson(jsonEntity));
      }
    }
    Map<String, dynamic>? jsonAnimation = json['animation'];
    Animation? animation;
    if (jsonAnimation != null) {
      animation = Animation.fromJson(jsonAnimation);
    }
    Map<String, dynamic>? jsonAudio = json['audio'];
    Audio? audio;
    if (jsonAudio != null) {
      audio = Audio.fromJson(jsonAudio);
    }
    Map<String, dynamic>? jsonDocument = json['document'];
    Document? document;
    if (jsonDocument != null) {
      document = Document.fromJson(jsonDocument);
    }
    List<dynamic>? jsonPhoto = json['photo'];
    List<PhotoSize>? photo;
    if (jsonPhoto != null) {
      photo = [];
      for (Map<String, dynamic> jsonPhotoSize in jsonPhoto) {
        photo.add(PhotoSize.fromJson(jsonPhotoSize));
      }
    }
    Map<String, dynamic>? jsonSticker = json['sticker'];
    Sticker? sticker;
    if (jsonSticker != null) {
      sticker = Sticker.fromJson(jsonSticker);
    }
    Map<String, dynamic>? jsonVideo = json['video'];
    Video? video;
    if (jsonVideo != null) {
      video = Video.fromJson(jsonVideo);
    }
    Map<String, dynamic>? jsonVideoNote = json['video_note'];
    VideoNote? videoNote;
    if (jsonVideoNote != null) {
      videoNote = VideoNote.fromJson(jsonVideoNote);
    }
    Map<String, dynamic>? jsonVoice = json['voice'];
    Voice? voice;
    if (jsonVoice != null) {
      voice = Voice.fromJson(jsonVoice);
    }
    List<dynamic>? jsonCaptionEntities = json['caption_entities'];
    List<MessageEntity>? captionEntities;
    if (jsonCaptionEntities != null) {
      captionEntities = [];
      for (Map<String, dynamic> jsonEntity in jsonCaptionEntities) {
        captionEntities.add(MessageEntity.fromJson(jsonEntity));
      }
    }
    Map<String, dynamic>? jsonContact = json['contact'];
    Contact? contact;
    if (jsonContact != null) {
      contact = Contact.fromJson(jsonContact);
    }
    Map<String, dynamic>? jsonDice = json['dice'];
    Dice? dice;
    if (jsonDice != null) {
      dice = Dice.fromJson(jsonDice);
    }
    Map<String, dynamic>? jsonGame = json['game'];
    Game? game;
    if (jsonGame != null) {
      game = Game.fromJson(jsonGame);
    }
    Map<String, dynamic>? jsonPoll = json['poll'];
    Poll? poll;
    if (jsonPoll != null) {
      poll = Poll.fromJson(jsonPoll);
    }
    Map<String, dynamic>? jsonVenue = json['venue'];
    Venue? venue;
    if (jsonVenue != null) {
      venue = Venue.fromJson(jsonVenue);
    }
    Map<String, dynamic>? jsonLocation = json['location'];
    Location? location;
    if (jsonLocation != null) {
      location = Location.fromJson(jsonLocation);
    }
    List<dynamic>? jsonNewChatMembers = json['new_chat_members'];
    List<User>? newChatMembers;
    if (jsonNewChatMembers != null) {
      newChatMembers = [];
      for (Map<String, dynamic> jsonUser in jsonNewChatMembers) {
        newChatMembers.add(User.fromJson(jsonUser));
      }
    }
    Map<String, dynamic>? jsonLeftChatMember = json['left_chat_member'];
    User? leftChatMember;
    if (jsonLeftChatMember != null) {
      leftChatMember = User.fromJson(jsonLeftChatMember);
    }
    List<dynamic>? jsonNewChatPhoto = json['new_chat_photo'];
    List<PhotoSize>? newChatPhoto;
    if (jsonNewChatPhoto != null) {
      newChatPhoto = [];
      for (Map<String, dynamic> jsonPhotoSize in jsonNewChatPhoto) {
        newChatPhoto.add(PhotoSize.fromJson(jsonPhotoSize));
      }
    }
    Map<String, dynamic>? jsonMessageAutoDeleteTimerChanged =
        json['message_auto_delete_timer_changed'];
    MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;
    if (jsonMessageAutoDeleteTimerChanged != null) {
      messageAutoDeleteTimerChanged = MessageAutoDeleteTimerChanged.fromJson(
          jsonMessageAutoDeleteTimerChanged);
    }
    Map<String, dynamic>? jsonPinnedMessage = json['pinned_message'];
    Message? pinnedMessage;
    if (jsonPinnedMessage != null) {
      pinnedMessage = Message.fromJson(jsonPinnedMessage);
    }
    Map<String, dynamic>? jsonInvoice = json['invoice'];
    Invoice? invoice;
    if (jsonInvoice != null) {
      invoice = Invoice.fromJson(jsonInvoice);
    }
    Map<String, dynamic>? jsonSuccessfulPayment = json['successful_payment'];
    SuccessfulPayment? successfulPayment;
    if (jsonSuccessfulPayment != null) {
      successfulPayment = SuccessfulPayment.fromJson(jsonSuccessfulPayment);
    }
    Map<String, dynamic>? jsonPassportData = json['passport_data'];
    PassportData? passportData;
    if (jsonPassportData != null) {
      passportData = PassportData.fromJson(jsonPassportData);
    }
    Map<String, dynamic>? jsonProximityAlertTriggered =
        json['proximity_alert_triggered'];
    ProximityAlertTriggered? proximityAlertTriggered;
    if (jsonProximityAlertTriggered != null) {
      proximityAlertTriggered =
          ProximityAlertTriggered.fromJson(jsonProximityAlertTriggered);
    }
    Map<String, dynamic>? jsonForumTopicCreated = json['forum_topic_created'];
    ForumTopicCreated? forumTopicCreated;
    if (jsonForumTopicCreated != null) {
      forumTopicCreated = ForumTopicCreated.fromJson(jsonForumTopicCreated);
    }
    Map<String, dynamic>? jsonForumTopicClosed = json['forum_topic_closed'];
    ForumTopicClosed? forumTopicClosed;
    if (jsonForumTopicClosed != null) {
      forumTopicClosed = ForumTopicClosed.fromJson(jsonForumTopicClosed);
    }
    Map<String, dynamic>? jsonForumTopicReopened = json['forum_topic_reopened'];
    ForumTopicReopened? forumTopicReopened;
    if (jsonForumTopicReopened != null) {
      forumTopicReopened = ForumTopicReopened.fromJson(jsonForumTopicReopened);
    }
    Map<String, dynamic>? jsonVideoChatScheduled = json['video_chat_scheduled'];
    VideoChatScheduled? videoChatScheduled;
    if (jsonVideoChatScheduled != null) {
      videoChatScheduled = VideoChatScheduled.fromJson(jsonVideoChatScheduled);
    }
    Map<String, dynamic>? jsonVideoChatStarted = json['video_chat_started'];
    VideoChatStarted? videoChatStarted;
    if (jsonVideoChatStarted != null) {
      videoChatStarted = VideoChatStarted.fromJson(jsonVideoChatStarted);
    }
    Map<String, dynamic>? jsonVideoChatEnded = json['video_chat_ended'];
    VideoChatEnded? videoChatEnded;
    if (jsonVideoChatEnded != null) {
      videoChatEnded = VideoChatEnded.fromJson(jsonVideoChatEnded);
    }
    Map<String, dynamic>? jsonVideoChatParticipantsInvited =
        json['video_chat_participants_invited'];
    VideoChatParticipantsInvited? videoChatParticipantsInvited;
    if (jsonVideoChatParticipantsInvited != null) {
      videoChatParticipantsInvited = VideoChatParticipantsInvited.fromJson(
          jsonVideoChatParticipantsInvited);
    }
    Map<String, dynamic>? jsonWebAppData = json['web_app_data'];
    WebAppData? webAppData;
    if (jsonWebAppData != null) {
      webAppData = WebAppData.fromJson(jsonWebAppData);
    }
    Map<String, dynamic>? jsonReplyMarkup = json['reply_markup'];
    InlineKeyboardMarkup? replyMarkup;
    if (jsonReplyMarkup != null) {
      replyMarkup = InlineKeyboardMarkup.fromJson(jsonReplyMarkup);
    }
    return Message(
        messageId: json['message_id'],
        messageThreadId: json['message_thread_id'],
        from: from,
        senderChat: senderChat,
        date: json['date'],
        chat: chat,
        forwardFrom: forwardFrom,
        forwardFromChat: forwardFromChat,
        forwardFromMessageId: json['forward_from_message_id'],
        forwardSignature: json['forward_signature'],
        forwardSenderName: json['forward_sender_name'],
        forwardDate: json['forward_date'],
        isTopicMessage: json['is_topic_message'],
        isAutomaticForward: json['is_automatic_forward'],
        replyToMessage: replyToMessage,
        viaBot: viaBot,
        editDate: json['edit_date'],
        hasProtectedContent: json['has_protected_content'],
        mediaGroupId: json['media_group_id'],
        authorSignature: json['author_signature'],
        text: json['text'],
        entities: entities,
        animation: animation,
        audio: audio,
        document: document,
        photo: photo,
        sticker: sticker,
        video: video,
        videoNote: videoNote,
        voice: voice,
        caption: json['caption'],
        captionEntities: captionEntities,
        contact: contact,
        dice: dice,
        game: game,
        poll: poll,
        venue: venue,
        location: location,
        newChatMembers: newChatMembers,
        leftChatMember: leftChatMember,
        newChatTitle: json['new_chat_title'],
        newChatPhoto: newChatPhoto,
        deleteChatPhoto: json['delete_chat_photo'],
        groupChatCreated: json['group_chat_created'],
        supergroupChatCreated: json['supergroup_chat_created'],
        channelChatCreated: json['channel_chat_created'],
        messageAutoDeleteTimerChanged: messageAutoDeleteTimerChanged,
        migrateToChatId: json['migrate_to_chat_id'],
        migrateFromChatId: json['migrate_from_chat_id'],
        pinnedMessage: pinnedMessage,
        invoice: invoice,
        successfulPayment: successfulPayment,
        connectedWebsite: json['connected_website'],
        passportData: passportData,
        proximityAlertTriggered: proximityAlertTriggered,
        forumTopicCreated: forumTopicCreated,
        forumTopicClosed: forumTopicClosed,
        forumTopicReopened: forumTopicReopened,
        videoChatScheduled: videoChatScheduled,
        videoChatStarted: videoChatStarted,
        videoChatEnded: videoChatEnded,
        videoChatParticipantsInvited: videoChatParticipantsInvited,
        webAppData: webAppData,
        replyMarkup: replyMarkup);
  }
}
