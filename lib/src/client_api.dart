import 'client/methods/add_sticker_to_set/request.dart';
import 'client/methods/add_sticker_to_set/response.dart';
import 'client/methods/answer_callback_query/request.dart';
import 'client/methods/answer_callback_query/response.dart';
import 'client/methods/answer_inline_query/request.dart';
import 'client/methods/answer_inline_query/response.dart';
import 'client/methods/answer_pre_checkout_query/request.dart';
import 'client/methods/answer_pre_checkout_query/response.dart';
import 'client/methods/answer_shipping_query/request.dart';
import 'client/methods/answer_shipping_query/response.dart';
import 'client/methods/answer_web_app_query/request.dart';
import 'client/methods/answer_web_app_query/response.dart';
import 'client/methods/approve_chat_join_request/request.dart';
import 'client/methods/approve_chat_join_request/response.dart';
import 'client/methods/ban_chat_member/request.dart';
import 'client/methods/ban_chat_member/response.dart';
import 'client/methods/ban_chat_sender_chat/request.dart';
import 'client/methods/ban_chat_sender_chat/response.dart';
import 'client/methods/close/request.dart';
import 'client/methods/close/response.dart';
import 'client/methods/close_forum_topic/request.dart';
import 'client/methods/close_forum_topic/response.dart';
import 'client/methods/copy_message/request.dart';
import 'client/methods/copy_message/response.dart';
import 'client/methods/create_chat_invite_link/request.dart';
import 'client/methods/create_chat_invite_link/response.dart';
import 'client/methods/create_forum_topic/request.dart';
import 'client/methods/create_forum_topic/response.dart';
import 'client/methods/create_invoice_link/request.dart';
import 'client/methods/create_invoice_link/response.dart';
import 'client/methods/create_new_sticker_set/request.dart';
import 'client/methods/create_new_sticker_set/response.dart';
import 'client/methods/decline_chat_join_request/request.dart';
import 'client/methods/decline_chat_join_request/response.dart';
import 'client/methods/delete_chat_photo/request.dart';
import 'client/methods/delete_chat_photo/response.dart';
import 'client/methods/delete_chat_sticker_set/request.dart';
import 'client/methods/delete_chat_sticker_set/response.dart';
import 'client/methods/delete_forum_topic/request.dart';
import 'client/methods/delete_forum_topic/response.dart';
import 'client/methods/delete_message/request.dart';
import 'client/methods/delete_message/response.dart';
import 'client/methods/delete_my_commands/request.dart';
import 'client/methods/delete_my_commands/response.dart';
import 'client/methods/delete_sticker_from_set/request.dart';
import 'client/methods/delete_sticker_from_set/response.dart';
import 'client/methods/delete_webhook/request.dart';
import 'client/methods/delete_webhook/response.dart';
import 'client/methods/edit_chat_invite_link/request.dart';
import 'client/methods/edit_chat_invite_link/response.dart';
import 'client/methods/edit_forum_topic/request.dart';
import 'client/methods/edit_forum_topic/response.dart';
import 'client/methods/edit_message_caption/request.dart';
import 'client/methods/edit_message_caption/response.dart';
import 'client/methods/edit_message_live_location/request.dart';
import 'client/methods/edit_message_live_location/response.dart';
import 'client/methods/edit_message_media/request.dart';
import 'client/methods/edit_message_media/response.dart';
import 'client/methods/edit_message_reply_markup/request.dart';
import 'client/methods/edit_message_reply_markup/response.dart';
import 'client/methods/edit_message_text/request.dart';
import 'client/methods/edit_message_text/response.dart';
import 'client/methods/export_chat_invite_link/request.dart';
import 'client/methods/export_chat_invite_link/response.dart';
import 'client/methods/forward_message/request.dart';
import 'client/methods/forward_message/response.dart';
import 'client/methods/get_chat/request.dart';
import 'client/methods/get_chat/response.dart';
import 'client/methods/get_chat_administrators/request.dart';
import 'client/methods/get_chat_administrators/response.dart';
import 'client/methods/get_chat_member/request.dart';
import 'client/methods/get_chat_member/response.dart';
import 'client/methods/get_chat_member_count/request.dart';
import 'client/methods/get_chat_member_count/response.dart';
import 'client/methods/get_chat_menu_button/request.dart';
import 'client/methods/get_chat_menu_button/response.dart';
import 'client/methods/get_custom_emoji_stickers/request.dart';
import 'client/methods/get_custom_emoji_stickers/response.dart';
import 'client/methods/get_file/request.dart';
import 'client/methods/get_file/response.dart';
import 'client/methods/get_forum_topic_icon_stickers/request.dart';
import 'client/methods/get_forum_topic_icon_stickers/response.dart';
import 'client/methods/get_game_high_scores/request.dart';
import 'client/methods/get_game_high_scores/response.dart';
import 'client/methods/get_me/request.dart';
import 'client/methods/get_me/response.dart';
import 'client/methods/get_my_commands/request.dart';
import 'client/methods/get_my_commands/response.dart';
import 'client/methods/get_my_default_administrator_rights/request.dart';
import 'client/methods/get_my_default_administrator_rights/response.dart';
import 'client/methods/get_sticker_set/request.dart';
import 'client/methods/get_sticker_set/response.dart';
import 'client/methods/get_updates/request.dart';
import 'client/methods/get_updates/response.dart';
import 'client/methods/get_user_profile_photos/request.dart';
import 'client/methods/get_user_profile_photos/response.dart';
import 'client/methods/get_webhook_info/request.dart';
import 'client/methods/get_webhook_info/response.dart';
import 'client/methods/leave_chat/request.dart';
import 'client/methods/leave_chat/response.dart';
import 'client/methods/log_out/request.dart';
import 'client/methods/log_out/response.dart';
import 'client/methods/pin_chat_message/request.dart';
import 'client/methods/pin_chat_message/response.dart';
import 'client/methods/promote_chat_member/request.dart';
import 'client/methods/promote_chat_member/response.dart';
import 'client/methods/reopen_forum_topic/request.dart';
import 'client/methods/reopen_forum_topic/response.dart';
import 'client/methods/restrict_chat_member/request.dart';
import 'client/methods/restrict_chat_member/response.dart';
import 'client/methods/revoke_chat_invite_link/request.dart';
import 'client/methods/revoke_chat_invite_link/response.dart';
import 'client/methods/send_animation/request.dart';
import 'client/methods/send_animation/response.dart';
import 'client/methods/send_audio/request.dart';
import 'client/methods/send_audio/response.dart';
import 'client/methods/send_chat_action/request.dart';
import 'client/methods/send_chat_action/response.dart';
import 'client/methods/send_contact/request.dart';
import 'client/methods/send_contact/response.dart';
import 'client/methods/send_dice/request.dart';
import 'client/methods/send_dice/response.dart';
import 'client/methods/send_document/request.dart';
import 'client/methods/send_document/response.dart';
import 'client/methods/send_game/request.dart';
import 'client/methods/send_game/response.dart';
import 'client/methods/send_invoice/request.dart';
import 'client/methods/send_invoice/response.dart';
import 'client/methods/send_location/request.dart';
import 'client/methods/send_location/response.dart';
import 'client/methods/send_media_group/request.dart';
import 'client/methods/send_media_group/response.dart';
import 'client/methods/send_message/request.dart';
import 'client/methods/send_message/response.dart';
import 'client/methods/send_photo/request.dart';
import 'client/methods/send_photo/response.dart';
import 'client/methods/send_poll/request.dart';
import 'client/methods/send_poll/response.dart';
import 'client/methods/send_sticker/request.dart';
import 'client/methods/send_sticker/response.dart';
import 'client/methods/send_venue/request.dart';
import 'client/methods/send_venue/response.dart';
import 'client/methods/send_video/request.dart';
import 'client/methods/send_video/response.dart';
import 'client/methods/send_video_note/request.dart';
import 'client/methods/send_video_note/response.dart';
import 'client/methods/send_voice/request.dart';
import 'client/methods/send_voice/response.dart';
import 'client/methods/set_chat_administrator_custom_title/request.dart';
import 'client/methods/set_chat_administrator_custom_title/response.dart';
import 'client/methods/set_chat_description/request.dart';
import 'client/methods/set_chat_description/response.dart';
import 'client/methods/set_chat_menu_button/request.dart';
import 'client/methods/set_chat_menu_button/response.dart';
import 'client/methods/set_chat_permissions/request.dart';
import 'client/methods/set_chat_permissions/response.dart';
import 'client/methods/set_chat_photo/request.dart';
import 'client/methods/set_chat_photo/response.dart';
import 'client/methods/set_chat_sticker_set/request.dart';
import 'client/methods/set_chat_sticker_set/response.dart';
import 'client/methods/set_chat_title/request.dart';
import 'client/methods/set_chat_title/response.dart';
import 'client/methods/set_game_score/request.dart';
import 'client/methods/set_game_score/response.dart';
import 'client/methods/set_my_commands/request.dart';
import 'client/methods/set_my_commands/response.dart';
import 'client/methods/set_my_default_administrator_rights/request.dart';
import 'client/methods/set_my_default_administrator_rights/response.dart';
import 'client/methods/set_passport_data_errors/request.dart';
import 'client/methods/set_passport_data_errors/response.dart';
import 'client/methods/set_sticker_position_in_set/request.dart';
import 'client/methods/set_sticker_position_in_set/response.dart';
import 'client/methods/set_sticker_set_thumb/request.dart';
import 'client/methods/set_sticker_set_thumb/response.dart';
import 'client/methods/set_webhook/request.dart';
import 'client/methods/set_webhook/response.dart';
import 'client/methods/stop_message_live_location/request.dart';
import 'client/methods/stop_message_live_location/response.dart';
import 'client/methods/stop_poll/request.dart';
import 'client/methods/stop_poll/response.dart';
import 'client/methods/unban_chat_member/request.dart';
import 'client/methods/unban_chat_member/response.dart';
import 'client/methods/unban_chat_sender_chat/request.dart';
import 'client/methods/unban_chat_sender_chat/response.dart';
import 'client/methods/unpin_all_chat_messages/request.dart';
import 'client/methods/unpin_all_chat_messages/response.dart';
import 'client/methods/unpin_all_forum_topic_messages/request.dart';
import 'client/methods/unpin_all_forum_topic_messages/response.dart';
import 'client/methods/unpin_chat_message/request.dart';
import 'client/methods/unpin_chat_message/response.dart';
import 'client/methods/upload_sticker_file/request.dart';
import 'client/methods/upload_sticker_file/response.dart';
import 'client/client.dart';
import 'models/bot_command.dart';
import 'models/bot_command_scope.dart';
import 'models/chat_administrator_rights.dart';
import 'models/chat_permissions.dart';
import 'models/inline_keyboard_markup.dart';
import 'models/inline_query_result.dart';
import 'models/input_file.dart';
import 'models/input_media.dart';
import 'models/labeled_price.dart';
import 'models/mask_position.dart';
import 'models/menu_button.dart';
import 'models/message_entity.dart';
import 'models/passport_element_error.dart';
import 'models/reply_markup.dart';
import 'models/shipping_option.dart';

class ClientApi {
  final Client _client;

  ClientApi(Client client) : _client = client;

  Future<ResponseGetUpdates> getUpdates(
      {int? offset,
      int? limit,
      int? timeout,
      // List<UpdateType>
      List<String>? allowedUpdates}) async {
    final request = RequestGetUpdates.create(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates);
    final response = await _client.send(request);
    return response as ResponseGetUpdates;
  }

  Future<ResponseSetWebhook> setWebhook(
      {required String url,
      InputFile? certificate,
      String? ipAddress,
      int? maxConnections,
      // List<UpdateType,
      List<String>? allowedUpdates,
      bool? dropPendingUpdates,
      String? secretToken}) async {
    final request = RequestSetWebhook.create(
        url: url,
        certificate: certificate,
        ipAddress: ipAddress,
        maxConnections: maxConnections,
        allowedUpdates: allowedUpdates,
        dropPendingUpdates: dropPendingUpdates,
        secretToken: secretToken);
    final response = await _client.send(request);
    return response as ResponseSetWebhook;
  }

  Future<ResponseDeleteWebhook> deleteWebhook(
      {bool? dropPendingUpdates}) async {
    final request =
        RequestDeleteWebhook.create(dropPendingUpdates: dropPendingUpdates);
    final response = await _client.send(request);
    return response as ResponseDeleteWebhook;
  }

  Future<ResponseGetWebhookInfo> getWebhookInfo() async {
    final request = RequestGetWebhookInfo();
    final response = await _client.send(request);
    return response as ResponseGetWebhookInfo;
  }

  Future<ResponseGetMe> getMe() async {
    final request = RequestGetMe();
    final response = await _client.send(request);
    return response as ResponseGetMe;
  }

  Future<ResponseLogOut> logOut() async {
    final request = RequestLogOut();
    final response = await _client.send(request);
    return response as ResponseLogOut;
  }

  Future<ResponseClose> close() async {
    final request = RequestClose();
    final response = await _client.send(request);
    return response as ResponseClose;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendMessage;
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
      bool? protectContent}) async {
    final request = RequestForwardMessage.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        fromChatId: fromChatId,
        messageId: messageId,
        disableNotification: disableNotification,
        protectContent: protectContent);
    final response = await _client.send(request);
    return response as ResponseForwardMessage;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseCopyMessage;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendPhoto;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendAudio;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendDocument;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendVideo;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendAnimation;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendVoice;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendVideoNote;
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
      bool? allowSendingWithoutReply}) async {
    final request = RequestSendMediaGroup.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        media: media,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply);
    final response = await _client.send(request);
    return response as ResponseSendMediaGroup;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendLocation;
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
      InlineKeyboardMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseEditMessageLiveLocation;
  }

  Future<ResponseStopMessageLiveLocation> stopMessageLiveLocation(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestStopMessageLiveLocation.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseStopMessageLiveLocation;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendVenue;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendContact;
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
      ReplyMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendPoll;
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
      ReplyMarkup? replyMarkup}) async {
    final request = RequestSendDice.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        emoji: emoji,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseSendDice;
  }

  Future<ResponseSendChatAction> sendChatAction(
      {
      // int | String
      required Object chatId,
      // ChatAction
      required String action}) async {
    final request =
        RequestSendChatAction.create(chatId: chatId, action: action);
    final response = await _client.send(request);
    return response as ResponseSendChatAction;
  }

  Future<ResponseGetUserProfilePhotos> getUserProfilePhotos(
      {required int userId, int? offset, int? limit}) async {
    final request = RequestGetUserProfilePhotos.create(
        userId: userId, offset: offset, limit: limit);
    final response = await _client.send(request);
    return response as ResponseGetUserProfilePhotos;
  }

  Future<ResponseGetFile> getFile({required String fileId}) async {
    final request = RequestGetFile.create(fileId: fileId);
    final response = await _client.send(request);
    return response as ResponseGetFile;
  }

  Future<ResponseBanChatMember> banChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      int? untilDate,
      bool? revokeMessages}) async {
    final request = RequestBanChatMember.create(
        chatId: chatId,
        userId: userId,
        untilDate: untilDate,
        revokeMessages: revokeMessages);
    final response = await _client.send(request);
    return response as ResponseBanChatMember;
  }

  Future<ResponseUnbanChatMember> unbanChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? onlyIfBanned}) async {
    final request = RequestUnbanChatMember.create(
        chatId: chatId, userId: userId, onlyIfBanned: onlyIfBanned);
    final response = await _client.send(request);
    return response as ResponseUnbanChatMember;
  }

  Future<ResponseRestrictChatMember> restrictChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      required ChatPermissions permissions,
      int? untilDate}) async {
    final request = RequestRestrictChatMember.create(
        chatId: chatId,
        userId: userId,
        permissions: permissions,
        untilDate: untilDate);
    final response = await _client.send(request);
    return response as ResponseRestrictChatMember;
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
      bool? canManageTopics}) async {
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
    final response = await _client.send(request);
    return response as ResponsePromoteChatMember;
  }

  Future<ResponseSetChatAdministratorCustomTitle>
      setChatAdministratorCustomTitle(
          {
          // int | String
          required Object chatId,
          required int userId,
          required String customTitle}) async {
    final request = RequestSetChatAdministratorCustomTitle.create(
        chatId: chatId, userId: userId, customTitle: customTitle);
    final response = await _client.send(request);
    return response as ResponseSetChatAdministratorCustomTitle;
  }

  Future<ResponseBanChatSenderChat> banChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) async {
    final request = RequestBanChatSenderChat.create(
        chatId: chatId, senderChatId: senderChatId);
    final response = await _client.send(request);
    return response as ResponseBanChatSenderChat;
  }

  Future<ResponseUnbanChatSenderChat> unbanChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) async {
    final request = RequestUnbanChatSenderChat.create(
        chatId: chatId, senderChatId: senderChatId);
    final response = await _client.send(request);
    return response as ResponseUnbanChatSenderChat;
  }

  Future<ResponseSetChatPermissions> setChatPermissions(
      {
      // int | String
      required Object chatId,
      required ChatPermissions permissions}) async {
    final request = RequestSetChatPermissions.create(
        chatId: chatId, permissions: permissions);
    final response = await _client.send(request);
    return response as ResponseSetChatPermissions;
  }

  Future<ResponseExportChatInviteLink> exportChatInviteLink(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestExportChatInviteLink.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseExportChatInviteLink;
  }

  Future<ResponseCreateChatInviteLink> createChatInviteLink(
      {
      // int | String
      required Object chatId,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) async {
    final request = RequestCreateChatInviteLink.create(
        chatId: chatId,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    final response = await _client.send(request);
    return response as ResponseCreateChatInviteLink;
  }

  Future<ResponseEditChatInviteLink> editChatInviteLink(
      {
      // int | String
      required Object chatId,
      required String inviteLink,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) async {
    final request = RequestEditChatInviteLink.create(
        chatId: chatId,
        inviteLink: inviteLink,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    final response = await _client.send(request);
    return response as ResponseEditChatInviteLink;
  }

  Future<ResponseRevokeChatInviteLink> revokeChatInviteLink(
      {
      // int | String
      required Object chatId,
      required String inviteLink}) async {
    final request = RequestRevokeChatInviteLink.create(
        chatId: chatId, inviteLink: inviteLink);
    final response = await _client.send(request);
    return response as ResponseRevokeChatInviteLink;
  }

  Future<ResponseApproveChatJoinRequest> approveChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) async {
    final request =
        RequestApproveChatJoinRequest.create(chatId: chatId, userId: userId);
    final response = await _client.send(request);
    return response as ResponseApproveChatJoinRequest;
  }

  Future<ResponseDeclineChatJoinRequest> declineChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) async {
    final request =
        RequestDeclineChatJoinRequest.create(chatId: chatId, userId: userId);
    final response = await _client.send(request);
    return response as ResponseDeclineChatJoinRequest;
  }

  Future<ResponseSetChatPhoto> setChatPhoto(
      {
      // int | String
      required Object chatId,
      required InputFile photo}) async {
    final request = RequestSetChatPhoto.create(chatId: chatId, photo: photo);
    final response = await _client.send(request);
    return response as ResponseSetChatPhoto;
  }

  Future<ResponseDeleteChatPhoto> deleteChatPhoto(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestDeleteChatPhoto.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseDeleteChatPhoto;
  }

  Future<ResponseSetChatTitle> setChatTitle(
      {
      // int | String
      required Object chatId,
      required String title}) async {
    final request = RequestSetChatTitle.create(chatId: chatId, title: title);
    final response = await _client.send(request);
    return response as ResponseSetChatTitle;
  }

  Future<ResponseSetChatDescription> setChatDescription(
      {
      // int | String
      required Object chatId,
      String? description}) async {
    final request = RequestSetChatDescription.create(
        chatId: chatId, description: description);
    final response = await _client.send(request);
    return response as ResponseSetChatDescription;
  }

  Future<ResponsePinChatMessage> pinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId,
      bool? disableNotification}) async {
    final request = RequestPinChatMessage.create(
        chatId: chatId,
        messageId: messageId,
        disableNotification: disableNotification);
    final response = await _client.send(request);
    return response as ResponsePinChatMessage;
  }

  Future<ResponseUnpinChatMessage> unpinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) async {
    final request =
        RequestUnpinChatMessage.create(chatId: chatId, messageId: messageId);
    final response = await _client.send(request);
    return response as ResponseUnpinChatMessage;
  }

  Future<ResponseUnpinAllChatMessages> unpinAllChatMessages(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestUnpinAllChatMessages.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseUnpinAllChatMessages;
  }

  Future<ResponseLeaveChat> leaveChat(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestLeaveChat.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseLeaveChat;
  }

  Future<ResponseGetChat> getChat(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestGetChat.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseGetChat;
  }

  Future<ResponseGetChatAdministrators> getChatAdministrators(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestGetChatAdministrators.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseGetChatAdministrators;
  }

  Future<ResponseGetChatMemberCount> getChatMemberCount(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestGetChatMemberCount.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseGetChatMemberCount;
  }

  Future<ResponseGetChatMember> getChatMember(
      {
      // int | String
      required Object chatId,
      required int userId}) async {
    final request = RequestGetChatMember.create(chatId: chatId, userId: userId);
    final response = await _client.send(request);
    return response as ResponseGetChatMember;
  }

  Future<ResponseSetChatStickerSet> setChatStickerSet(
      {
      // int | String
      required Object chatId,
      required String stickerSetName}) async {
    final request = RequestSetChatStickerSet.create(
        chatId: chatId, stickerSetName: stickerSetName);
    final response = await _client.send(request);
    return response as ResponseSetChatStickerSet;
  }

  Future<ResponseDeleteChatStickerSet> deleteChatStickerSet(
      {
      // int | String
      required Object chatId}) async {
    final request = RequestDeleteChatStickerSet.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseDeleteChatStickerSet;
  }

  Future<ResponseGetForumTopicIconStickers> getForumTopicIconStickers() async {
    final request = RequestGetForumTopicIconStickers();
    final response = await _client.send(request);
    return response as ResponseGetForumTopicIconStickers;
  }

  Future<ResponseCreateForumTopic> createForumTopic(
      {
      // int | String
      required Object chatId,
      required String name,
      int? iconColor,
      String? iconCustomEmojiId}) async {
    final request = RequestCreateForumTopic.create(
        chatId: chatId,
        name: name,
        iconColor: iconColor,
        iconCustomEmojiId: iconCustomEmojiId);
    final response = await _client.send(request);
    return response as ResponseCreateForumTopic;
  }

  Future<ResponseEditForumTopic> editForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId,
      required String name,
      required String iconCustomEmojiId}) async {
    final request = RequestEditForumTopic.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        name: name,
        iconCustomEmojiId: iconCustomEmojiId);
    final response = await _client.send(request);
    return response as ResponseEditForumTopic;
  }

  Future<ResponseCloseForumTopic> closeForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) async {
    final request = RequestCloseForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    final response = await _client.send(request);
    return response as ResponseCloseForumTopic;
  }

  Future<ResponseReopenForumTopic> reopenForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) async {
    final request = RequestReopenForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    final response = await _client.send(request);
    return response as ResponseReopenForumTopic;
  }

  Future<ResponseDeleteForumTopic> deleteForumTopic(
      { // int | String
      required Object chatId,
      required int messageThreadId}) async {
    final request = RequestDeleteForumTopic.create(
        chatId: chatId, messageThreadId: messageThreadId);
    final response = await _client.send(request);
    return response as ResponseDeleteForumTopic;
  }

  Future<ResponseUnpinAllForumTopicMessages> unpinAllForumTopicMessages(
      { // int | String
      required Object chatId,
      required int messageThreadId}) async {
    final request = RequestUnpinAllForumTopicMessages.create(
        chatId: chatId, messageThreadId: messageThreadId);
    final response = await _client.send(request);
    return response as ResponseUnpinAllForumTopicMessages;
  }

  Future<ResponseAnswerCallbackQuery> answerCallbackQuery(
      {required String callbackQueryId,
      String? text,
      bool? showAlert,
      String? url,
      int? cacheTime}) async {
    final request = RequestAnswerCallbackQuery.create(
        callbackQueryId: callbackQueryId,
        text: text,
        showAlert: showAlert,
        url: url,
        cacheTime: cacheTime);
    final response = await _client.send(request);
    return response as ResponseAnswerCallbackQuery;
  }

  Future<ResponseSetMyCommands> setMyCommands(
      {required List<BotCommand> commands,
      BotCommandScope? scope,
      String? languageCode}) async {
    final request = RequestSetMyCommands.create(
        commands: commands, scope: scope, languageCode: languageCode);
    final response = await _client.send(request);
    return response as ResponseSetMyCommands;
  }

  Future<ResponseDeleteMyCommands> deleteMyCommands(
      {BotCommandScope? scope, String? languageCode}) async {
    final request = RequestDeleteMyCommands.create(
        scope: scope, languageCode: languageCode);
    final response = await _client.send(request);
    return response as ResponseDeleteMyCommands;
  }

  Future<ResponseGetMyCommands> getMyCommands(
      {BotCommandScope? scope, String? languageCode}) async {
    final request =
        RequestGetMyCommands.create(scope: scope, languageCode: languageCode);
    final response = await _client.send(request);
    return response as ResponseGetMyCommands;
  }

  Future<ResponseSetChatMenuButton> setChatMenuButton(
      {int? chatId, MenuButton? menuButton}) async {
    final request =
        RequestSetChatMenuButton.create(chatId: chatId, menuButton: menuButton);
    final response = await _client.send(request);
    return response as ResponseSetChatMenuButton;
  }

  Future<ResponseGetChatMenuButton> getChatMenuButton({int? chatId}) async {
    final request = RequestGetChatMenuButton.create(chatId: chatId);
    final response = await _client.send(request);
    return response as ResponseGetChatMenuButton;
  }

  Future<ResponseSetMyDefaultAdministratorRights>
      setMyDefaultAdministratorRights(
          {ChatAdministratorRights? rights, bool? forChannels}) async {
    final request = RequestSetMyDefaultAdministratorRights.create(
        rights: rights, forChannels: forChannels);
    final response = await _client.send(request);
    return response as ResponseSetMyDefaultAdministratorRights;
  }

  Future<ResponseGetMyDefaultAdministratorRights>
      getMyDefaultAdministratorRights({bool? forChannels}) async {
    final request =
        RequestGetMyDefaultAdministratorRights.create(forChannels: forChannels);
    final response = await _client.send(request);
    return response as ResponseGetMyDefaultAdministratorRights;
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
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestEditMessageText.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseEditMessageText;
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
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestEditMessageCaption.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseEditMessageCaption;
  }

  Future<ResponseEditMessageMedia> editMessageMedia(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required InputMedia media,
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestEditMessageMedia.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        media: media,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseEditMessageMedia;
  }

  Future<ResponseEditMessageReplyMarkup> editMessageReplyMarkup(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestEditMessageReplyMarkup.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseEditMessageReplyMarkup;
  }

  Future<ResponseStopPoll> stopPoll(
      {
      // int | String
      required Object chatId,
      required int messageId,
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestStopPoll.create(
        chatId: chatId, messageId: messageId, replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseStopPoll;
  }

  Future<ResponseDeleteMessage> deleteMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) async {
    final request =
        RequestDeleteMessage.create(chatId: chatId, messageId: messageId);
    final response = await _client.send(request);
    return response as ResponseDeleteMessage;
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
      ReplyMarkup? replyMarkup}) async {
    final request = RequestSendSticker.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        sticker: sticker,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseSendSticker;
  }

  Future<ResponseGetStickerSet> getStickerSet({required String name}) async {
    final request = RequestGetStickerSet.create(name: name);
    final response = await _client.send(request);
    return response as ResponseGetStickerSet;
  }

  Future<ResponseGetCustomEmojiStickers> getCustomEmojiStickers(
      {required List<String> customEmojiIds}) async {
    final request =
        RequestGetCustomEmojiStickers.create(customEmojiIds: customEmojiIds);
    final response = await _client.send(request);
    return response as ResponseGetCustomEmojiStickers;
  }

  Future<ResponseUploadStickerFile> uploadStickerFile(
      {required int userId, required InputFile pngSticker}) async {
    final request =
        RequestUploadStickerFile.create(userId: userId, pngSticker: pngSticker);
    final response = await _client.send(request);
    return response as ResponseUploadStickerFile;
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
      MaskPosition? maskPosition}) async {
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
    final response = await _client.send(request);
    return response as ResponseCreateNewStickerSet;
  }

  Future<ResponseAddStickerToSet> addStickerToSet(
      {required int userId,
      required String name,
      // InputFile | String
      Object? pngSticker,
      InputFile? tgsSticker,
      InputFile? webmSticker,
      required String emojis,
      MaskPosition? maskPosition}) async {
    final request = RequestAddStickerToSet.create(
        userId: userId,
        name: name,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        emojis: emojis,
        maskPosition: maskPosition);
    final response = await _client.send(request);
    return response as ResponseAddStickerToSet;
  }

  Future<ResponseSetStickerPositionInSet> setStickerPositionInSet(
      {required String sticker, required int position}) async {
    final request = RequestSetStickerPositionInSet.create(
        sticker: sticker, position: position);
    final response = await _client.send(request);
    return response as ResponseSetStickerPositionInSet;
  }

  Future<ResponseDeleteStickerFromSet> deleteStickerFromSet(
      {required String sticker}) async {
    final request = RequestDeleteStickerFromSet.create(sticker: sticker);
    final response = await _client.send(request);
    return response as ResponseDeleteStickerFromSet;
  }

  Future<ResponseSetStickerSetThumb> setStickerSetThumb(
      {required String name,
      required int userId,
      // InputFile | String
      Object? thumb}) async {
    final request = RequestSetStickerSetThumb.create(
        name: name, userId: userId, thumb: thumb);
    final response = await _client.send(request);
    return response as ResponseSetStickerSetThumb;
  }

  Future<ResponseAnswerInlineQuery> answerInlineQuery(
      {required String inlineQueryId,
      required List<InlineQueryResult> results,
      int? cacheTime,
      bool? isPersonal,
      String? nextOffset,
      String? switchPmText,
      String? switchPmParameter}) async {
    final request = RequestAnswerInlineQuery.create(
        inlineQueryId: inlineQueryId,
        results: results,
        cacheTime: cacheTime,
        isPersonal: isPersonal,
        nextOffset: nextOffset,
        switchPmText: switchPmText,
        switchPmParameter: switchPmParameter);
    final response = await _client.send(request);
    return response as ResponseAnswerInlineQuery;
  }

  Future<ResponseAnswerWebAppQuery> answerWebAppQuery(
      {required String webAppQueryId,
      required InlineQueryResult result}) async {
    final request = RequestAnswerWebAppQuery.create(
        webAppQueryId: webAppQueryId, result: result);
    final response = await _client.send(request);
    return response as ResponseAnswerWebAppQuery;
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
      InlineKeyboardMarkup? replyMarkup}) async {
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
    final response = await _client.send(request);
    return response as ResponseSendInvoice;
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
      bool? isFlexible}) async {
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
    final response = await _client.send(request);
    return response as ResponseCreateInvoiceLink;
  }

  Future<ResponseAnswerShippingQuery> answerShippingQuery(
      {required String shippingQueryId,
      required bool ok,
      List<ShippingOption>? shippingOptions,
      String? errorMessage}) async {
    final request = RequestAnswerShippingQuery.create(
        shippingQueryId: shippingQueryId,
        ok: ok,
        shippingOptions: shippingOptions,
        errorMessage: errorMessage);
    final response = await _client.send(request);
    return response as ResponseAnswerShippingQuery;
  }

  Future<ResponseAnswerPreCheckoutQuery> answerPreCheckoutQuery(
      {required String preCheckoutQueryId,
      required bool ok,
      String? errorMessage}) async {
    final request = RequestAnswerPreCheckoutQuery.create(
        preCheckoutQueryId: preCheckoutQueryId,
        ok: ok,
        errorMessage: errorMessage);
    final response = await _client.send(request);
    return response as ResponseAnswerPreCheckoutQuery;
  }

  Future<ResponseSetPassportDataErrors> setPassportDataErrors(
      {required int userId, required List<PassportElementError> errors}) async {
    final request =
        RequestSetPassportDataErrors.create(userId: userId, errors: errors);
    final response = await _client.send(request);
    return response as ResponseSetPassportDataErrors;
  }

  Future<ResponseSendGame> sendGame(
      {required int chatId,
      int? messageThreadId,
      required String gameShortName,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) async {
    final request = RequestSendGame.create(
        chatId: chatId,
        messageThreadId: messageThreadId,
        gameShortName: gameShortName,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final response = await _client.send(request);
    return response as ResponseSendGame;
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
      bool? disableEditMessage}) async {
    final request = RequestSetGameScore.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId,
        score: score,
        force: force,
        disableEditMessage: disableEditMessage);
    final response = await _client.send(request);
    return response as ResponseSetGameScore;
  }

  Future<ResponseGetGameHighScores> getGameHighScores(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId}) async {
    final request = RequestGetGameHighScores.create(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId);
    final response = await _client.send(request);
    return response as ResponseGetGameHighScores;
  }
}
