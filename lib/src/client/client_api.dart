import '../models/bot_command.dart';
import '../models/bot_command_scope.dart';
import '../models/chat_administrator_rights.dart';
import '../models/chat_permissions.dart';
import '../models/inline_keyboard_markup.dart';
import '../models/inline_query_result.dart';
import '../models/input_file.dart';
import '../models/input_media.dart';
import '../models/labeled_price.dart';
import '../models/mask_position.dart';
import '../models/menu_button.dart';
import '../models/message_entity.dart';
import '../models/passport_element_error.dart';
import '../models/reply_markup.dart';
import '../models/shipping_option.dart';
import 'methods/add_sticker_to_set/request.dart';
import 'methods/add_sticker_to_set/response.dart';
import 'methods/answer_callback_query/request.dart';
import 'methods/answer_callback_query/response.dart';
import 'methods/answer_inline_query/request.dart';
import 'methods/answer_inline_query/response.dart';
import 'methods/answer_pre_checkout_query/request.dart';
import 'methods/answer_pre_checkout_query/response.dart';
import 'methods/answer_shipping_query/request.dart';
import 'methods/answer_shipping_query/response.dart';
import 'methods/answer_web_app_query/request.dart';
import 'methods/answer_web_app_query/response.dart';
import 'methods/approve_chat_join_request/request.dart';
import 'methods/approve_chat_join_request/response.dart';
import 'methods/ban_chat_member/request.dart';
import 'methods/ban_chat_member/response.dart';
import 'methods/ban_chat_sender_chat/request.dart';
import 'methods/ban_chat_sender_chat/response.dart';
import 'methods/close/request.dart';
import 'methods/close/response.dart';
import 'methods/close_forum_topic/request.dart';
import 'methods/close_forum_topic/response.dart';
import 'methods/copy_message/request.dart';
import 'methods/copy_message/response.dart';
import 'methods/create_chat_invite_link/request.dart';
import 'methods/create_chat_invite_link/response.dart';
import 'methods/create_forum_topic/request.dart';
import 'methods/create_forum_topic/response.dart';
import 'methods/create_invoice_link/request.dart';
import 'methods/create_invoice_link/response.dart';
import 'methods/create_new_sticker_set/request.dart';
import 'methods/create_new_sticker_set/response.dart';
import 'methods/decline_chat_join_request/request.dart';
import 'methods/decline_chat_join_request/response.dart';
import 'methods/delete_chat_photo/request.dart';
import 'methods/delete_chat_photo/response.dart';
import 'methods/delete_chat_sticker_set/request.dart';
import 'methods/delete_chat_sticker_set/response.dart';
import 'methods/delete_forum_topic/request.dart';
import 'methods/delete_forum_topic/response.dart';
import 'methods/delete_message/request.dart';
import 'methods/delete_message/response.dart';
import 'methods/delete_my_commands/request.dart';
import 'methods/delete_my_commands/response.dart';
import 'methods/delete_sticker_from_set/request.dart';
import 'methods/delete_sticker_from_set/response.dart';
import 'methods/delete_webhook/request.dart';
import 'methods/delete_webhook/response.dart';
import 'methods/edit_chat_invite_link/request.dart';
import 'methods/edit_chat_invite_link/response.dart';
import 'methods/edit_forum_topic/request.dart';
import 'methods/edit_forum_topic/response.dart';
import 'methods/edit_message_caption/request.dart';
import 'methods/edit_message_caption/response.dart';
import 'methods/edit_message_live_location/request.dart';
import 'methods/edit_message_live_location/response.dart';
import 'methods/edit_message_media/request.dart';
import 'methods/edit_message_media/response.dart';
import 'methods/edit_message_reply_markup/request.dart';
import 'methods/edit_message_reply_markup/response.dart';
import 'methods/edit_message_text/request.dart';
import 'methods/edit_message_text/response.dart';
import 'methods/export_chat_invite_link/request.dart';
import 'methods/export_chat_invite_link/response.dart';
import 'methods/forward_message/request.dart';
import 'methods/forward_message/response.dart';
import 'methods/get_chat/request.dart';
import 'methods/get_chat/response.dart';
import 'methods/get_chat_administrators/request.dart';
import 'methods/get_chat_administrators/response.dart';
import 'methods/get_chat_member/request.dart';
import 'methods/get_chat_member/response.dart';
import 'methods/get_chat_member_count/request.dart';
import 'methods/get_chat_member_count/response.dart';
import 'methods/get_chat_menu_button/request.dart';
import 'methods/get_chat_menu_button/response.dart';
import 'methods/get_custom_emoji_stickers/request.dart';
import 'methods/get_custom_emoji_stickers/response.dart';
import 'methods/get_file/request.dart';
import 'methods/get_file/response.dart';
import 'methods/get_forum_topic_icon_stickers/request.dart';
import 'methods/get_forum_topic_icon_stickers/response.dart';
import 'methods/get_game_high_scores/request.dart';
import 'methods/get_game_high_scores/response.dart';
import 'methods/get_me/request.dart';
import 'methods/get_me/response.dart';
import 'methods/get_my_commands/request.dart';
import 'methods/get_my_commands/response.dart';
import 'methods/get_my_default_administrator_rights/request.dart';
import 'methods/get_my_default_administrator_rights/response.dart';
import 'methods/get_sticker_set/request.dart';
import 'methods/get_sticker_set/response.dart';
import 'methods/get_updates/request.dart';
import 'methods/get_updates/response.dart';
import 'methods/get_user_profile_photos/request.dart';
import 'methods/get_user_profile_photos/response.dart';
import 'methods/get_webhook_info/request.dart';
import 'methods/get_webhook_info/response.dart';
import 'methods/leave_chat/request.dart';
import 'methods/leave_chat/response.dart';
import 'methods/log_out/request.dart';
import 'methods/log_out/response.dart';
import 'methods/pin_chat_message/request.dart';
import 'methods/pin_chat_message/response.dart';
import 'methods/promote_chat_member/request.dart';
import 'methods/promote_chat_member/response.dart';
import 'methods/reopen_forum_topic/request.dart';
import 'methods/reopen_forum_topic/response.dart';
import 'methods/restrict_chat_member/request.dart';
import 'methods/restrict_chat_member/response.dart';
import 'methods/revoke_chat_invite_link/request.dart';
import 'methods/revoke_chat_invite_link/response.dart';
import 'methods/send_animation/request.dart';
import 'methods/send_animation/response.dart';
import 'methods/send_audio/request.dart';
import 'methods/send_audio/response.dart';
import 'methods/send_chat_action/request.dart';
import 'methods/send_chat_action/response.dart';
import 'methods/send_contact/request.dart';
import 'methods/send_contact/response.dart';
import 'methods/send_dice/request.dart';
import 'methods/send_dice/response.dart';
import 'methods/send_document/request.dart';
import 'methods/send_document/response.dart';
import 'methods/send_game/request.dart';
import 'methods/send_game/response.dart';
import 'methods/send_invoice/request.dart';
import 'methods/send_invoice/response.dart';
import 'methods/send_location/request.dart';
import 'methods/send_location/response.dart';
import 'methods/send_media_group/request.dart';
import 'methods/send_media_group/response.dart';
import 'methods/send_message/request.dart';
import 'methods/send_message/response.dart';
import 'methods/send_photo/request.dart';
import 'methods/send_photo/response.dart';
import 'methods/send_poll/request.dart';
import 'methods/send_poll/response.dart';
import 'methods/send_sticker/request.dart';
import 'methods/send_sticker/response.dart';
import 'methods/send_venue/request.dart';
import 'methods/send_venue/response.dart';
import 'methods/send_video/request.dart';
import 'methods/send_video/response.dart';
import 'methods/send_video_note/request.dart';
import 'methods/send_video_note/response.dart';
import 'methods/send_voice/request.dart';
import 'methods/send_voice/response.dart';
import 'methods/set_chat_administrator_custom_title/request.dart';
import 'methods/set_chat_administrator_custom_title/response.dart';
import 'methods/set_chat_description/request.dart';
import 'methods/set_chat_description/response.dart';
import 'methods/set_chat_menu_button/request.dart';
import 'methods/set_chat_menu_button/response.dart';
import 'methods/set_chat_permissions/request.dart';
import 'methods/set_chat_permissions/response.dart';
import 'methods/set_chat_photo/request.dart';
import 'methods/set_chat_photo/response.dart';
import 'methods/set_chat_sticker_set/request.dart';
import 'methods/set_chat_sticker_set/response.dart';
import 'methods/set_chat_title/request.dart';
import 'methods/set_chat_title/response.dart';
import 'methods/set_game_score/request.dart';
import 'methods/set_game_score/response.dart';
import 'methods/set_my_commands/request.dart';
import 'methods/set_my_commands/response.dart';
import 'methods/set_my_default_administrator_rights/request.dart';
import 'methods/set_my_default_administrator_rights/response.dart';
import 'methods/set_passport_data_errors/request.dart';
import 'methods/set_passport_data_errors/response.dart';
import 'methods/set_sticker_position_in_set/request.dart';
import 'methods/set_sticker_position_in_set/response.dart';
import 'methods/set_sticker_set_thumb/request.dart';
import 'methods/set_sticker_set_thumb/response.dart';
import 'methods/set_webhook/request.dart';
import 'methods/set_webhook/response.dart';
import 'methods/stop_message_live_location/request.dart';
import 'methods/stop_message_live_location/response.dart';
import 'methods/stop_poll/request.dart';
import 'methods/stop_poll/response.dart';
import 'methods/unban_chat_member/request.dart';
import 'methods/unban_chat_member/response.dart';
import 'methods/unban_chat_sender_chat/request.dart';
import 'methods/unban_chat_sender_chat/response.dart';
import 'methods/unpin_all_chat_messages/request.dart';
import 'methods/unpin_all_chat_messages/response.dart';
import 'methods/unpin_all_forum_topic_messages/request.dart';
import 'methods/unpin_all_forum_topic_messages/response.dart';
import 'methods/unpin_chat_message/request.dart';
import 'methods/unpin_chat_message/response.dart';
import 'methods/upload_sticker_file/request.dart';
import 'methods/upload_sticker_file/response.dart';
import 'client.dart';

class ClientApi {
  final Client _client;

  ClientApi(Client client) : _client = client;

  Future<ResponseGetUpdates> getUpdates(
      {int? offset,
      int? limit,
      int? timeout,
      // List<UpdateType>
      List<String>? allowedUpdates}) {
    final request = RequestGetUpdates.create(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates);
    return _client.send(request);
  }

  Future<ResponseSetWebhook> setWebhook(
      {required String url,
      InputFile? certificate,
      String? ipAddress,
      int? maxConnections,
      // List<UpdateType,
      List<String>? allowedUpdates,
      bool? dropPendingUpdates,
      String? secretToken}) {
    final request = RequestSetWebhook.create(
        url: url,
        certificate: certificate,
        ipAddress: ipAddress,
        maxConnections: maxConnections,
        allowedUpdates: allowedUpdates,
        dropPendingUpdates: dropPendingUpdates,
        secretToken: secretToken);
    return _client.send(request);
  }

  Future<ResponseDeleteWebhook> deleteWebhook({bool? dropPendingUpdates}) {
    final request =
        RequestDeleteWebhook.create(dropPendingUpdates: dropPendingUpdates);
    return _client.send(request);
  }

  Future<ResponseGetWebhookInfo> getWebhookInfo() {
    final request = RequestGetWebhookInfo();
    return _client.send(request);
  }

  Future<ResponseGetMe> getMe() {
    final request = RequestGetMe();
    return _client.send(request);
  }

  Future<ResponseLogOut> logOut() {
    final request = RequestLogOut();
    return _client.send(request);
  }

  Future<ResponseClose> close() {
    final request = RequestClose();
    return _client.send(request);
  }

  Future<ResponseSendMessage> sendMessage(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String text,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendMessage.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseForwardMessage> forwardMessage(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // int | String
      required Object fromChatId,
      required int messageId,
      bool? disableNotification,
      bool? protectContent}) {
    final request = RequestForwardMessage.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        fromChatId: fromChatId,
        messageId: messageId,
        disableNotification: disableNotification,
        protectContent: protectContent);
    return _client.send(request);
  }

  Future<ResponseCopyMessage> copyMessage(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // int | String
      required Object fromChatId,
      required int messageId,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestCopyMessage.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        fromChatId: fromChatId,
        messageId: messageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendPhoto> sendPhoto(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object photo,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendPhoto.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        photo: photo,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendAudio> sendAudio(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object audio,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      String? performer,
      String? title,
      // InputFile | String
      Object? thumb,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendAudio.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        audio: audio,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        duration: duration,
        performer: performer,
        title: title,
        thumb: thumb,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendDocument> sendDocument(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object document,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableContentTypeDetection,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendDocument.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        document: document,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableContentTypeDetection: disableContentTypeDetection,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendVideo> sendVideo(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object video,
      int? duration,
      int? width,
      int? height,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? supportsStreaming,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendVideo.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        video: video,
        duration: duration,
        width: width,
        height: height,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        supportsStreaming: supportsStreaming,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendAnimation> sendAnimation(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object animation,
      int? duration,
      int? width,
      int? height,
      // InputFile | String
      Object? thumb,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendAnimation.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        animation: animation,
        duration: duration,
        width: width,
        height: height,
        thumb: thumb,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendVoice> sendVoice(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object voice,
      String? caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendVoice.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        voice: voice,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        duration: duration,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendVideoNote> sendVideoNote(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object videoNote,
      int? duration,
      int? length,
      // InputFile | String
      Object? thumb,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendVideoNote.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        videoNote: videoNote,
        duration: duration,
        length: length,
        thumb: thumb,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendMediaGroup> sendMediaGroup(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required List<InputMedia> media,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply}) {
    final request = RequestSendMediaGroup.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        media: media,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply);
    return _client.send(request);
  }

  Future<ResponseSendLocation> sendLocation(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? livePeriod,
      int? heading,
      int? proximityAlertRadius,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendLocation.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        latitude: latitude,
        longitude: longitude,
        horizontalAccuracy: horizontalAccuracy,
        livePeriod: livePeriod,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseEditMessageLiveLocation> editMessageLiveLocation(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? heading,
      int? proximityAlertRadius,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestEditMessageLiveLocation.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        latitude: latitude,
        longitude: longitude,
        horizontalAccuracy: horizontalAccuracy,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseStopMessageLiveLocation> stopMessageLiveLocation(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestStopMessageLiveLocation.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendVenue> sendVenue(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required double latitude,
      required double longitude,
      required String title,
      required String address,
      String? foursquareId,
      String? foursquareType,
      String? googlePlaceId,
      String? googlePlaceType,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendVenue.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        latitude: latitude,
        longitude: longitude,
        title: title,
        address: address,
        foursquareId: foursquareId,
        foursquareType: foursquareType,
        googlePlaceId: googlePlaceId,
        googlePlaceType: googlePlaceType,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendContact> sendContact(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String phoneNumber,
      required String firstName,
      String? lastName,
      String? vcard,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendContact.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        phoneNumber: phoneNumber,
        firstName: firstName,
        lastName: lastName,
        vcard: vcard,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendPoll> sendPoll(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String question,
      required List<String> options,
      bool? isAnonymous,
      // PollType
      String? type,
      bool? allowsMultipleAnswers,
      int? correctOptionId,
      String? explanation,
      // ParseMode
      String? explanationParseMode,
      List<MessageEntity>? explanationEntities,
      int? openPeriod,
      int? closeDate,
      bool? isClosed,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendPoll.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        question: question,
        options: options,
        isAnonymous: isAnonymous,
        type: type,
        allowsMultipleAnswers: allowsMultipleAnswers,
        correctOptionId: correctOptionId,
        explanation: explanation,
        explanationParseMode: explanationParseMode,
        explanationEntities: explanationEntities,
        openPeriod: openPeriod,
        closeDate: closeDate,
        isClosed: isClosed,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendDice> sendDice(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // DiceEmoji
      String? emoji,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendDice.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        emoji: emoji,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSendChatAction> sendChatAction(
      {
      // int | String
      required Object chatId,
      // ChatAction
      required String action}) {
    final request =
        RequestSendChatAction.create(chatId: chatId, action: action);
    return _client.send(request);
  }

  Future<ResponseGetUserProfilePhotos> getUserProfilePhotos(
      {required int userId, int? offset, int? limit}) {
    final request = RequestGetUserProfilePhotos.create(
        userId: userId, offset: offset, limit: limit);
    return _client.send(request);
  }

  Future<ResponseGetFile> getFile({required String fileId}) {
    final request = RequestGetFile.create(fileId: fileId);
    return _client.send(request);
  }

  Future<ResponseBanChatMember> banChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      int? untilDate,
      bool? revokeMessages}) {
    final request = RequestBanChatMember.create(
        chatId: chatId,
        userId: userId,
        untilDate: untilDate,
        revokeMessages: revokeMessages);
    return _client.send(request);
  }

  Future<ResponseUnbanChatMember> unbanChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? onlyIfBanned}) {
    final request = RequestUnbanChatMember.create(
        chatId: chatId, userId: userId, onlyIfBanned: onlyIfBanned);
    return _client.send(request);
  }

  Future<ResponseRestrictChatMember> restrictChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      required ChatPermissions permissions,
      int? untilDate}) {
    final request = RequestRestrictChatMember.create(
        chatId: chatId,
        userId: userId,
        permissions: permissions,
        untilDate: untilDate);
    return _client.send(request);
  }

  Future<ResponsePromoteChatMember> promoteChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? isAnonymous,
      bool? canManageChat,
      bool? canPostMessages,
      bool? canEditMessages,
      bool? canDeleteMessages,
      bool? canManageVideoChats,
      bool? canRestrictMembers,
      bool? canPromoteMembers,
      bool? canChangeInfo,
      bool? canInviteUsers,
      bool? canPinMessages,
      bool? canManageTopics}) {
    final request = RequestPromoteChatMember.create(
        chatId: chatId,
        userId: userId,
        isAnonymous: isAnonymous,
        canManageChat: canManageChat,
        canPostMessages: canPostMessages,
        canEditMessages: canEditMessages,
        canDeleteMessages: canDeleteMessages,
        canManageVideoChats: canManageVideoChats,
        canRestrictMembers: canRestrictMembers,
        canPromoteMembers: canPromoteMembers,
        canChangeInfo: canChangeInfo,
        canInviteUsers: canInviteUsers,
        canPinMessages: canPinMessages,
        canManageTopics: canManageTopics);
    return _client.send(request);
  }

  Future<ResponseSetChatAdministratorCustomTitle>
      setChatAdministratorCustomTitle(
          {
          // int | String
          required Object chatId,
          required int userId,
          required String customTitle}) {
    final request = RequestSetChatAdministratorCustomTitle.create(
        chatId: chatId, userId: userId, customTitle: customTitle);
    return _client.send(request);
  }

  Future<ResponseBanChatSenderChat> banChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final request = RequestBanChatSenderChat.create(
        chatId: chatId, senderChatId: senderChatId);
    return _client.send(request);
  }

  Future<ResponseUnbanChatSenderChat> unbanChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final request = RequestUnbanChatSenderChat.create(
        chatId: chatId, senderChatId: senderChatId);
    return _client.send(request);
  }

  Future<ResponseSetChatPermissions> setChatPermissions(
      {
      // int | String
      required Object chatId,
      required ChatPermissions permissions}) {
    final request = RequestSetChatPermissions.create(
        chatId: chatId, permissions: permissions);
    return _client.send(request);
  }

  Future<ResponseExportChatInviteLink> exportChatInviteLink(
      {
      // int | String
      required Object chatId}) {
    final request = RequestExportChatInviteLink.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseCreateChatInviteLink> createChatInviteLink(
      {
      // int | String
      required Object chatId,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) {
    final request = RequestCreateChatInviteLink.create(
        chatId: chatId,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    return _client.send(request);
  }

  Future<ResponseEditChatInviteLink> editChatInviteLink(
      {
      // int | String
      required Object chatId,
      required String inviteLink,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) {
    final request = RequestEditChatInviteLink.create(
        chatId: chatId,
        inviteLink: inviteLink,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    return _client.send(request);
  }

  Future<ResponseRevokeChatInviteLink> revokeChatInviteLink(
      {
      // int | String
      required Object chatId,
      required String inviteLink}) {
    final request = RequestRevokeChatInviteLink.create(
        chatId: chatId, inviteLink: inviteLink);
    return _client.send(request);
  }

  Future<ResponseApproveChatJoinRequest> approveChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final request =
        RequestApproveChatJoinRequest.create(chatId: chatId, userId: userId);
    return _client.send(request);
  }

  Future<ResponseDeclineChatJoinRequest> declineChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final request =
        RequestDeclineChatJoinRequest.create(chatId: chatId, userId: userId);
    return _client.send(request);
  }

  Future<ResponseSetChatPhoto> setChatPhoto(
      {
      // int | String
      required Object chatId,
      required InputFile photo}) {
    final request = RequestSetChatPhoto.create(chatId: chatId, photo: photo);
    return _client.send(request);
  }

  Future<ResponseDeleteChatPhoto> deleteChatPhoto(
      {
      // int | String
      required Object chatId}) {
    final request = RequestDeleteChatPhoto.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseSetChatTitle> setChatTitle(
      {
      // int | String
      required Object chatId,
      required String title}) {
    final request = RequestSetChatTitle.create(chatId: chatId, title: title);
    return _client.send(request);
  }

  Future<ResponseSetChatDescription> setChatDescription(
      {
      // int | String
      required Object chatId,
      String? description}) {
    final request = RequestSetChatDescription.create(
        chatId: chatId, description: description);
    return _client.send(request);
  }

  Future<ResponsePinChatMessage> pinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId,
      bool? disableNotification}) {
    final request = RequestPinChatMessage.create(
        chatId: chatId,
        messageId: messageId,
        disableNotification: disableNotification);
    return _client.send(request);
  }

  Future<ResponseUnpinChatMessage> unpinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final request =
        RequestUnpinChatMessage.create(chatId: chatId, messageId: messageId);
    return _client.send(request);
  }

  Future<ResponseUnpinAllChatMessages> unpinAllChatMessages(
      {
      // int | String
      required Object chatId}) {
    final request = RequestUnpinAllChatMessages.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseLeaveChat> leaveChat(
      {
      // int | String
      required Object chatId}) {
    final request = RequestLeaveChat.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseGetChat> getChat(
      {
      // int | String
      required Object chatId}) {
    final request = RequestGetChat.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseGetChatAdministrators> getChatAdministrators(
      {
      // int | String
      required Object chatId}) {
    final request = RequestGetChatAdministrators.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseGetChatMemberCount> getChatMemberCount(
      {
      // int | String
      required Object chatId}) {
    final request = RequestGetChatMemberCount.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseGetChatMember> getChatMember(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final request = RequestGetChatMember.create(chatId: chatId, userId: userId);
    return _client.send(request);
  }

  Future<ResponseSetChatStickerSet> setChatStickerSet(
      {
      // int | String
      required Object chatId,
      required String stickerSetName}) {
    final request = RequestSetChatStickerSet.create(
        chatId: chatId, stickerSetName: stickerSetName);
    return _client.send(request);
  }

  Future<ResponseDeleteChatStickerSet> deleteChatStickerSet(
      {
      // int | String
      required Object chatId}) {
    final request = RequestDeleteChatStickerSet.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseGetForumTopicIconStickers> getForumTopicIconStickers() {
    final request = RequestGetForumTopicIconStickers();
    return _client.send(request);
  }

  Future<ResponseCreateForumTopic> createForumTopic(
      {
      // int | String
      required Object chatId,
      required String name,
      int? iconColor,
      String? iconCustomEmojiId}) {
    final request = RequestCreateForumTopic.create(
        chatId: chatId,
        name: name,
        iconColor: iconColor,
        iconCustomEmojiId: iconCustomEmojiId);
    return _client.send(request);
  }

  Future<ResponseEditForumTopic> editForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId,
      required String name,
      required String iconCustomEmojiId}) {
    final request = RequestEditForumTopic.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        name: name,
        iconCustomEmojiId: iconCustomEmojiId);
    return _client.send(request);
  }

  Future<ResponseCloseForumTopic> closeForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final request = RequestCloseForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    return _client.send(request);
  }

  Future<ResponseReopenForumTopic> reopenForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final request = RequestReopenForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    return _client.send(request);
  }

  Future<ResponseDeleteForumTopic> deleteForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final request = RequestDeleteForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    return _client.send(request);
  }

  Future<ResponseUnpinAllForumTopicMessages> unpinAllForumTopicMessages(
      { // int | String
      required Object chatId,
      required int messageThreadId}) {
    final request = RequestUnpinAllForumTopicMessages.create(
        chatId: chatId, messageThreadId: messageThreadId);
    return _client.send(request);
  }

  Future<ResponseAnswerCallbackQuery> answerCallbackQuery(
      {required String callbackQueryId,
      String? text,
      bool? showAlert,
      String? url,
      int? cacheTime}) {
    final request = RequestAnswerCallbackQuery.create(
        callbackQueryId: callbackQueryId,
        text: text,
        showAlert: showAlert,
        url: url,
        cacheTime: cacheTime);
    return _client.send(request);
  }

  Future<ResponseSetMyCommands> setMyCommands(
      {required List<BotCommand> commands,
      BotCommandScope? scope,
      String? languageCode}) {
    final request = RequestSetMyCommands.create(
        commands: commands, scope: scope, languageCode: languageCode);
    return _client.send(request);
  }

  Future<ResponseDeleteMyCommands> deleteMyCommands(
      {BotCommandScope? scope, String? languageCode}) {
    final request = RequestDeleteMyCommands.create(
        scope: scope, languageCode: languageCode);
    return _client.send(request);
  }

  Future<ResponseGetMyCommands> getMyCommands(
      {BotCommandScope? scope, String? languageCode}) {
    final request =
        RequestGetMyCommands.create(scope: scope, languageCode: languageCode);
    return _client.send(request);
  }

  Future<ResponseSetChatMenuButton> setChatMenuButton(
      {int? chatId, MenuButton? menuButton}) {
    final request =
        RequestSetChatMenuButton.create(chatId: chatId, menuButton: menuButton);
    return _client.send(request);
  }

  Future<ResponseGetChatMenuButton> getChatMenuButton({int? chatId}) {
    final request = RequestGetChatMenuButton.create(chatId: chatId);
    return _client.send(request);
  }

  Future<ResponseSetMyDefaultAdministratorRights>
      setMyDefaultAdministratorRights(
          {ChatAdministratorRights? rights, bool? forChannels}) {
    final request = RequestSetMyDefaultAdministratorRights.create(
        rights: rights, forChannels: forChannels);
    return _client.send(request);
  }

  Future<ResponseGetMyDefaultAdministratorRights>
      getMyDefaultAdministratorRights({bool? forChannels}) {
    final request =
        RequestGetMyDefaultAdministratorRights.create(forChannels: forChannels);
    return _client.send(request);
  }

  Future<ResponseEditMessageText> editMessageText(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required String text,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestEditMessageText.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseEditMessageCaption> editMessageCaption(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required String caption,
      // ParseMode
      String? parseMode,
      List<MessageEntity>? captionEntities,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestEditMessageCaption.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseEditMessageMedia> editMessageMedia(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required InputMedia media,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestEditMessageMedia.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        media: media,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseEditMessageReplyMarkup> editMessageReplyMarkup(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestEditMessageReplyMarkup.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseStopPoll> stopPoll(
      {
      // int | String
      required Object chatId,
      required int messageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestStopPoll.create(
        chatId: chatId, messageId: messageId, replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseDeleteMessage> deleteMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final request =
        RequestDeleteMessage.create(chatId: chatId, messageId: messageId);
    return _client.send(request);
  }

  Future<ResponseSendSticker> sendSticker(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      // InputFile | String
      required Object sticker,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final request = RequestSendSticker.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        sticker: sticker,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseGetStickerSet> getStickerSet({required String name}) {
    final request = RequestGetStickerSet.create(name: name);
    return _client.send(request);
  }

  Future<ResponseGetCustomEmojiStickers> getCustomEmojiStickers(
      {required List<String> customEmojiIds}) {
    final request =
        RequestGetCustomEmojiStickers.create(customEmojiIds: customEmojiIds);
    return _client.send(request);
  }

  Future<ResponseUploadStickerFile> uploadStickerFile(
      {required int userId, required InputFile pngSticker}) {
    final request =
        RequestUploadStickerFile.create(userId: userId, pngSticker: pngSticker);
    return _client.send(request);
  }

  Future<ResponseCreateNewStickerSet> createNewStickerSet(
      {required int userId,
      required String name,
      required String title,
      // InputFile | String
      Object? pngSticker,
      InputFile? tgsSticker,
      InputFile? webmSticker,
      // StickerType
      String? stickerType,
      required String emojis,
      MaskPosition? maskPosition}) {
    final request = RequestCreateNewStickerSet.create(
        userId: userId,
        name: name,
        title: title,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        stickerType: stickerType,
        emojis: emojis,
        maskPosition: maskPosition);
    return _client.send(request);
  }

  Future<ResponseAddStickerToSet> addStickerToSet(
      {required int userId,
      required String name,
      // InputFile | String
      Object? pngSticker,
      InputFile? tgsSticker,
      InputFile? webmSticker,
      required String emojis,
      MaskPosition? maskPosition}) {
    final request = RequestAddStickerToSet.create(
        userId: userId,
        name: name,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        emojis: emojis,
        maskPosition: maskPosition);
    return _client.send(request);
  }

  Future<ResponseSetStickerPositionInSet> setStickerPositionInSet(
      {required String sticker, required int position}) {
    final request = RequestSetStickerPositionInSet.create(
        sticker: sticker, position: position);
    return _client.send(request);
  }

  Future<ResponseDeleteStickerFromSet> deleteStickerFromSet(
      {required String sticker}) {
    final request = RequestDeleteStickerFromSet.create(sticker: sticker);
    return _client.send(request);
  }

  Future<ResponseSetStickerSetThumb> setStickerSetThumb(
      {required String name,
      required int userId,
      // InputFile | String
      Object? thumb}) {
    final request = RequestSetStickerSetThumb.create(
        name: name, userId: userId, thumb: thumb);
    return _client.send(request);
  }

  Future<ResponseAnswerInlineQuery> answerInlineQuery(
      {required String inlineQueryId,
      required List<InlineQueryResult> results,
      int? cacheTime,
      bool? isPersonal,
      String? nextOffset,
      String? switchPmText,
      String? switchPmParameter}) {
    final request = RequestAnswerInlineQuery.create(
        inlineQueryId: inlineQueryId,
        results: results,
        cacheTime: cacheTime,
        isPersonal: isPersonal,
        nextOffset: nextOffset,
        switchPmText: switchPmText,
        switchPmParameter: switchPmParameter);
    return _client.send(request);
  }

  Future<ResponseAnswerWebAppQuery> answerWebAppQuery(
      {required String webAppQueryId, required InlineQueryResult result}) {
    final request = RequestAnswerWebAppQuery.create(
        webAppQueryId: webAppQueryId, result: result);
    return _client.send(request);
  }

  Future<ResponseSendInvoice> sendInvoice(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String title,
      required String description,
      required String payload,
      required String providerToken,
      required String currency,
      required List<LabeledPrice> prices,
      int? maxTipAmount,
      List<int>? suggestedTipAmounts,
      String? providerData,
      String? photoUrl,
      int? photoSize,
      int? photoWidth,
      int? photoHeight,
      bool? needName,
      bool? needPhoneNumber,
      bool? needEmail,
      bool? needShippingAddress,
      bool? sendPhoneNumberToProvider,
      bool? sendEmailToProvider,
      bool? isFlexible,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestSendInvoice.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        title: title,
        description: description,
        payload: payload,
        providerToken: providerToken,
        currency: currency,
        prices: prices,
        maxTipAmount: maxTipAmount,
        suggestedTipAmounts: suggestedTipAmounts,
        providerData: providerData,
        photoUrl: photoUrl,
        photoSize: photoSize,
        photoWidth: photoWidth,
        photoHeight: photoHeight,
        needName: needName,
        needPhoneNumber: needPhoneNumber,
        needEmail: needEmail,
        needShippingAddress: needShippingAddress,
        sendPhoneNumberToProvider: sendPhoneNumberToProvider,
        sendEmailToProvider: sendEmailToProvider,
        isFlexible: isFlexible,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseCreateInvoiceLink> createInvoiceLink(
      {required String title,
      required String description,
      required String payload,
      required String providerToken,
      required String currency,
      required List<LabeledPrice> prices,
      int? maxTipAmount,
      List<int>? suggestedTipAmounts,
      String? providerData,
      String? photoUrl,
      int? photoSize,
      int? photoWidth,
      int? photoHeight,
      bool? needName,
      bool? needPhoneNumber,
      bool? needEmail,
      bool? needShippingAddress,
      bool? sendPhoneNumberToProvider,
      bool? sendEmailToProvider,
      bool? isFlexible}) {
    final request = RequestCreateInvoiceLink.create(
        title: title,
        description: description,
        payload: payload,
        providerToken: providerToken,
        currency: currency,
        prices: prices,
        maxTipAmount: maxTipAmount,
        suggestedTipAmounts: suggestedTipAmounts,
        providerData: providerData,
        photoUrl: photoUrl,
        photoSize: photoSize,
        photoWidth: photoWidth,
        photoHeight: photoHeight,
        needName: needName,
        needPhoneNumber: needPhoneNumber,
        needEmail: needEmail,
        needShippingAddress: needShippingAddress,
        sendPhoneNumberToProvider: sendPhoneNumberToProvider,
        sendEmailToProvider: sendEmailToProvider,
        isFlexible: isFlexible);
    return _client.send(request);
  }

  Future<ResponseAnswerShippingQuery> answerShippingQuery(
      {required String shippingQueryId,
      required bool ok,
      List<ShippingOption>? shippingOptions,
      String? errorMessage}) {
    final request = RequestAnswerShippingQuery.create(
        shippingQueryId: shippingQueryId,
        ok: ok,
        shippingOptions: shippingOptions,
        errorMessage: errorMessage);
    return _client.send(request);
  }

  Future<ResponseAnswerPreCheckoutQuery> answerPreCheckoutQuery(
      {required String preCheckoutQueryId,
      required bool ok,
      String? errorMessage}) {
    final request = RequestAnswerPreCheckoutQuery.create(
        preCheckoutQueryId: preCheckoutQueryId,
        ok: ok,
        errorMessage: errorMessage);
    return _client.send(request);
  }

  Future<ResponseSetPassportDataErrors> setPassportDataErrors(
      {required int userId, required List<PassportElementError> errors}) {
    final request =
        RequestSetPassportDataErrors.create(userId: userId, errors: errors);
    return _client.send(request);
  }

  Future<ResponseSendGame> sendGame(
      {required int chatId,
      int? messageThreadId,
      required String gameShortName,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) {
    final request = RequestSendGame.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        gameShortName: gameShortName,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return _client.send(request);
  }

  Future<ResponseSetGameScore> setGameScore(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId,
      required int score,
      bool? force,
      bool? disableEditMessage}) {
    final request = RequestSetGameScore.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId,
        score: score,
        force: force,
        disableEditMessage: disableEditMessage);
    return _client.send(request);
  }

  Future<ResponseGetGameHighScores> getGameHighScores(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId}) {
    final request = RequestGetGameHighScores.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId);
    return _client.send(request);
  }
}
