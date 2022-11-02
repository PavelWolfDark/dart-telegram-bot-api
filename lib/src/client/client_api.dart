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
import 'methods/add_sticker_to_set/request_parameters.dart';
import 'methods/add_sticker_to_set/request.dart';
import 'methods/add_sticker_to_set/response.dart';
import 'methods/answer_callback_query/request_parameters.dart';
import 'methods/answer_callback_query/request.dart';
import 'methods/answer_callback_query/response.dart';
import 'methods/answer_inline_query/request_parameters.dart';
import 'methods/answer_inline_query/request.dart';
import 'methods/answer_inline_query/response.dart';
import 'methods/answer_pre_checkout_query/request_parameters.dart';
import 'methods/answer_pre_checkout_query/request.dart';
import 'methods/answer_pre_checkout_query/response.dart';
import 'methods/answer_shipping_query/request_parameters.dart';
import 'methods/answer_shipping_query/request.dart';
import 'methods/answer_shipping_query/response.dart';
import 'methods/answer_web_app_query/request_parameters.dart';
import 'methods/answer_web_app_query/request.dart';
import 'methods/answer_web_app_query/response.dart';
import 'methods/approve_chat_join_request/request_parameters.dart';
import 'methods/approve_chat_join_request/request.dart';
import 'methods/approve_chat_join_request/response.dart';
import 'methods/ban_chat_member/request_parameters.dart';
import 'methods/ban_chat_member/request.dart';
import 'methods/ban_chat_member/response.dart';
import 'methods/ban_chat_sender_chat/request_parameters.dart';
import 'methods/ban_chat_sender_chat/request.dart';
import 'methods/ban_chat_sender_chat/response.dart';
import 'methods/close/request.dart';
import 'methods/close/response.dart';
import 'methods/copy_message/request_parameters.dart';
import 'methods/copy_message/request.dart';
import 'methods/copy_message/response.dart';
import 'methods/create_chat_invite_link/request_parameters.dart';
import 'methods/create_chat_invite_link/request.dart';
import 'methods/create_chat_invite_link/response.dart';
import 'methods/create_invoice_link/request_parameters.dart';
import 'methods/create_invoice_link/request.dart';
import 'methods/create_invoice_link/response.dart';
import 'methods/create_new_sticker_set/request_parameters.dart';
import 'methods/create_new_sticker_set/request.dart';
import 'methods/create_new_sticker_set/response.dart';
import 'methods/decline_chat_join_request/request_parameters.dart';
import 'methods/decline_chat_join_request/request.dart';
import 'methods/decline_chat_join_request/response.dart';
import 'methods/delete_chat_photo/request_parameters.dart';
import 'methods/delete_chat_photo/request.dart';
import 'methods/delete_chat_photo/response.dart';
import 'methods/delete_chat_sticker_set/request_parameters.dart';
import 'methods/delete_chat_sticker_set/request.dart';
import 'methods/delete_chat_sticker_set/response.dart';
import 'methods/delete_message/request_parameters.dart';
import 'methods/delete_message/request.dart';
import 'methods/delete_message/response.dart';
import 'methods/delete_my_commands/request_parameters.dart';
import 'methods/delete_my_commands/request.dart';
import 'methods/delete_my_commands/response.dart';
import 'methods/delete_sticker_from_set/request_parameters.dart';
import 'methods/delete_sticker_from_set/request.dart';
import 'methods/delete_sticker_from_set/response.dart';
import 'methods/delete_webhook/request_parameters.dart';
import 'methods/delete_webhook/request.dart';
import 'methods/delete_webhook/response.dart';
import 'methods/edit_chat_invite_link/request_parameters.dart';
import 'methods/edit_chat_invite_link/request.dart';
import 'methods/edit_chat_invite_link/response.dart';
import 'methods/edit_message_caption/request_parameters.dart';
import 'methods/edit_message_caption/request.dart';
import 'methods/edit_message_caption/response.dart';
import 'methods/edit_message_live_location/request_parameters.dart';
import 'methods/edit_message_live_location/request.dart';
import 'methods/edit_message_live_location/response.dart';
import 'methods/edit_message_media/request_parameters.dart';
import 'methods/edit_message_media/request.dart';
import 'methods/edit_message_media/response.dart';
import 'methods/edit_message_reply_markup/request_parameters.dart';
import 'methods/edit_message_reply_markup/request.dart';
import 'methods/edit_message_reply_markup/response.dart';
import 'methods/edit_message_text/request_parameters.dart';
import 'methods/edit_message_text/request.dart';
import 'methods/edit_message_text/response.dart';
import 'methods/export_chat_invite_link/request_parameters.dart';
import 'methods/export_chat_invite_link/request.dart';
import 'methods/export_chat_invite_link/response.dart';
import 'methods/forward_message/request_parameters.dart';
import 'methods/forward_message/request.dart';
import 'methods/forward_message/response.dart';
import 'methods/get_chat/request_parameters.dart';
import 'methods/get_chat/request.dart';
import 'methods/get_chat/response.dart';
import 'methods/get_chat_administrators/request_parameters.dart';
import 'methods/get_chat_administrators/request.dart';
import 'methods/get_chat_administrators/response.dart';
import 'methods/get_chat_member/request_parameters.dart';
import 'methods/get_chat_member/request.dart';
import 'methods/get_chat_member/response.dart';
import 'methods/get_chat_member_count/request_parameters.dart';
import 'methods/get_chat_member_count/request.dart';
import 'methods/get_chat_member_count/response.dart';
import 'methods/get_chat_menu_button/request_parameters.dart';
import 'methods/get_chat_menu_button/request.dart';
import 'methods/get_chat_menu_button/response.dart';
import 'methods/get_custom_emoji_stickers/request_parameters.dart';
import 'methods/get_custom_emoji_stickers/request.dart';
import 'methods/get_custom_emoji_stickers/response.dart';
import 'methods/get_file/request_parameters.dart';
import 'methods/get_file/request.dart';
import 'methods/get_file/response.dart';
import 'methods/get_game_high_scores/request_parameters.dart';
import 'methods/get_game_high_scores/request.dart';
import 'methods/get_game_high_scores/response.dart';
import 'methods/get_me/request.dart';
import 'methods/get_me/response.dart';
import 'methods/get_my_commands/request_parameters.dart';
import 'methods/get_my_commands/request.dart';
import 'methods/get_my_commands/response.dart';
import 'methods/get_my_default_administrator_rights/request_parameters.dart';
import 'methods/get_my_default_administrator_rights/request.dart';
import 'methods/get_my_default_administrator_rights/response.dart';
import 'methods/get_sticker_set/request_parameters.dart';
import 'methods/get_sticker_set/request.dart';
import 'methods/get_sticker_set/response.dart';
import 'methods/get_updates/request_parameters.dart';
import 'methods/get_updates/request.dart';
import 'methods/get_updates/response.dart';
import 'methods/get_user_profile_photos/request_parameters.dart';
import 'methods/get_user_profile_photos/request.dart';
import 'methods/get_user_profile_photos/response.dart';
import 'methods/get_webhook_info/request.dart';
import 'methods/get_webhook_info/response.dart';
import 'methods/leave_chat/request_parameters.dart';
import 'methods/leave_chat/request.dart';
import 'methods/leave_chat/response.dart';
import 'methods/log_out/request.dart';
import 'methods/log_out/response.dart';
import 'methods/pin_chat_message/request_parameters.dart';
import 'methods/pin_chat_message/request.dart';
import 'methods/pin_chat_message/response.dart';
import 'methods/promote_chat_member/request_parameters.dart';
import 'methods/promote_chat_member/request.dart';
import 'methods/promote_chat_member/response.dart';
import 'methods/restrict_chat_member/request_parameters.dart';
import 'methods/restrict_chat_member/request.dart';
import 'methods/restrict_chat_member/response.dart';
import 'methods/revoke_chat_invite_link/request_parameters.dart';
import 'methods/revoke_chat_invite_link/request.dart';
import 'methods/revoke_chat_invite_link/response.dart';
import 'methods/send_animation/request_parameters.dart';
import 'methods/send_animation/request.dart';
import 'methods/send_animation/response.dart';
import 'methods/send_audio/request_parameters.dart';
import 'methods/send_audio/request.dart';
import 'methods/send_audio/response.dart';
import 'methods/send_chat_action/request_parameters.dart';
import 'methods/send_chat_action/request.dart';
import 'methods/send_chat_action/response.dart';
import 'methods/send_contact/request_parameters.dart';
import 'methods/send_contact/request.dart';
import 'methods/send_contact/response.dart';
import 'methods/send_dice/request_parameters.dart';
import 'methods/send_dice/request.dart';
import 'methods/send_dice/response.dart';
import 'methods/send_document/request_parameters.dart';
import 'methods/send_document/request.dart';
import 'methods/send_document/response.dart';
import 'methods/send_game/request_parameters.dart';
import 'methods/send_game/request.dart';
import 'methods/send_game/response.dart';
import 'methods/send_invoice/request_parameters.dart';
import 'methods/send_invoice/request.dart';
import 'methods/send_invoice/response.dart';
import 'methods/send_location/request_parameters.dart';
import 'methods/send_location/request.dart';
import 'methods/send_location/response.dart';
import 'methods/send_media_group/request_parameters.dart';
import 'methods/send_media_group/request.dart';
import 'methods/send_media_group/response.dart';
import 'methods/send_message/request_parameters.dart';
import 'methods/send_message/request.dart';
import 'methods/send_message/response.dart';
import 'methods/send_photo/request_parameters.dart';
import 'methods/send_photo/request.dart';
import 'methods/send_photo/response.dart';
import 'methods/send_poll/request_parameters.dart';
import 'methods/send_poll/request.dart';
import 'methods/send_poll/response.dart';
import 'methods/send_sticker/request_parameters.dart';
import 'methods/send_sticker/request.dart';
import 'methods/send_sticker/response.dart';
import 'methods/send_venue/request_parameters.dart';
import 'methods/send_venue/request.dart';
import 'methods/send_venue/response.dart';
import 'methods/send_video/request_parameters.dart';
import 'methods/send_video/request.dart';
import 'methods/send_video/response.dart';
import 'methods/send_video_note/request_parameters.dart';
import 'methods/send_video_note/request.dart';
import 'methods/send_video_note/response.dart';
import 'methods/send_voice/request_parameters.dart';
import 'methods/send_voice/request.dart';
import 'methods/send_voice/response.dart';
import 'methods/set_chat_administrator_custom_title/request_parameters.dart';
import 'methods/set_chat_administrator_custom_title/request.dart';
import 'methods/set_chat_administrator_custom_title/response.dart';
import 'methods/set_chat_description/request_parameters.dart';
import 'methods/set_chat_description/request.dart';
import 'methods/set_chat_description/response.dart';
import 'methods/set_chat_menu_button/request_parameters.dart';
import 'methods/set_chat_menu_button/request.dart';
import 'methods/set_chat_menu_button/response.dart';
import 'methods/set_chat_permissions/request_parameters.dart';
import 'methods/set_chat_permissions/request.dart';
import 'methods/set_chat_permissions/response.dart';
import 'methods/set_chat_photo/request_parameters.dart';
import 'methods/set_chat_photo/request.dart';
import 'methods/set_chat_photo/response.dart';
import 'methods/set_chat_sticker_set/request_parameters.dart';
import 'methods/set_chat_sticker_set/request.dart';
import 'methods/set_chat_sticker_set/response.dart';
import 'methods/set_chat_title/request_parameters.dart';
import 'methods/set_chat_title/request.dart';
import 'methods/set_chat_title/response.dart';
import 'methods/set_game_score/request_parameters.dart';
import 'methods/set_game_score/request.dart';
import 'methods/set_game_score/response.dart';
import 'methods/set_my_commands/request_parameters.dart';
import 'methods/set_my_commands/request.dart';
import 'methods/set_my_commands/response.dart';
import 'methods/set_my_default_administrator_rights/request_parameters.dart';
import 'methods/set_my_default_administrator_rights/request.dart';
import 'methods/set_my_default_administrator_rights/response.dart';
import 'methods/set_passport_data_errors/request_parameters.dart';
import 'methods/set_passport_data_errors/request.dart';
import 'methods/set_passport_data_errors/response.dart';
import 'methods/set_sticker_position_in_set/request_parameters.dart';
import 'methods/set_sticker_position_in_set/request.dart';
import 'methods/set_sticker_position_in_set/response.dart';
import 'methods/set_sticker_set_thumb/request_parameters.dart';
import 'methods/set_sticker_set_thumb/request.dart';
import 'methods/set_sticker_set_thumb/response.dart';
import 'methods/set_webhook/request_parameters.dart';
import 'methods/set_webhook/request.dart';
import 'methods/set_webhook/response.dart';
import 'methods/stop_message_live_location/request_parameters.dart';
import 'methods/stop_message_live_location/request.dart';
import 'methods/stop_message_live_location/response.dart';
import 'methods/stop_poll/request_parameters.dart';
import 'methods/stop_poll/request.dart';
import 'methods/stop_poll/response.dart';
import 'methods/unban_chat_member/request_parameters.dart';
import 'methods/unban_chat_member/request.dart';
import 'methods/unban_chat_member/response.dart';
import 'methods/unban_chat_sender_chat/request_parameters.dart';
import 'methods/unban_chat_sender_chat/request.dart';
import 'methods/unban_chat_sender_chat/response.dart';
import 'methods/unpin_all_chat_messages/request_parameters.dart';
import 'methods/unpin_all_chat_messages/request.dart';
import 'methods/unpin_all_chat_messages/response.dart';
import 'methods/unpin_chat_message/request_parameters.dart';
import 'methods/unpin_chat_message/request.dart';
import 'methods/unpin_chat_message/response.dart';
import 'methods/upload_sticker_file/request_parameters.dart';
import 'methods/upload_sticker_file/request.dart';
import 'methods/upload_sticker_file/response.dart';
import 'client.dart';

class ClientApi {
  final Client _client;

  ClientApi(this._client);

  Future<ResponseGetUpdates> getUpdates(
      {int? offset,
      int? limit,
      int? timeout,
      // List<UpdateType>
      List<String>? allowedUpdates}) {
    final requestParameters = RequestParametersGetUpdates(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates);
    final request = RequestGetUpdates(requestParameters);
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
    final requestParameters = RequestParametersSetWebhook(
        url: url,
        certificate: certificate,
        ipAddress: ipAddress,
        maxConnections: maxConnections,
        allowedUpdates: allowedUpdates,
        dropPendingUpdates: dropPendingUpdates,
        secretToken: secretToken);
    final request = RequestSetWebhook(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteWebhook> deleteWebhook({bool? dropPendingUpdates}) {
    final requestParameters =
        RequestParametersDeleteWebhook(dropPendingUpdates: dropPendingUpdates);
    final request = RequestDeleteWebhook(requestParameters);
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
    final requestParameters = RequestParametersSendMessage(
        chatId: chatId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseForwardMessage> forwardMessage(
      {
      // int | String
      required Object chatId,
      // int | String
      required Object fromChatId,
      required int messageId,
      bool? disableNotification,
      bool? protectContent}) {
    final requestParameters = RequestParametersForwardMessage(
        chatId: chatId,
        fromChatId: fromChatId,
        messageId: messageId,
        disableNotification: disableNotification,
        protectContent: protectContent);
    final request = RequestForwardMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseCopyMessage> copyMessage(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersCopyMessage(
        chatId: chatId,
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
    final request = RequestCopyMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendPhoto> sendPhoto(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendPhoto(
        chatId: chatId,
        photo: photo,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendPhoto(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendAudio> sendAudio(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendAudio(
        chatId: chatId,
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
    final request = RequestSendAudio(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendDocument> sendDocument(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendDocument(
        chatId: chatId,
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
    final request = RequestSendDocument(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendVideo> sendVideo(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendVideo(
        chatId: chatId,
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
    final request = RequestSendVideo(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendAnimation> sendAnimation(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendAnimation(
        chatId: chatId,
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
    final request = RequestSendAnimation(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendVoice> sendVoice(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendVoice(
        chatId: chatId,
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
    final request = RequestSendVoice(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendVideoNote> sendVideoNote(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendVideoNote(
        chatId: chatId,
        videoNote: videoNote,
        duration: duration,
        length: length,
        thumb: thumb,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendVideoNote(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendMediaGroup> sendMediaGroup(
      {
      // int | String
      required Object chatId,
      required List<InputMedia> media,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply}) {
    final requestParameters = RequestParametersSendMediaGroup(
        chatId: chatId,
        media: media,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply);
    final request = RequestSendMediaGroup(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendLocation> sendLocation(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendLocation(
        chatId: chatId,
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
    final request = RequestSendLocation(requestParameters);
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
    final requestParameters = RequestParametersEditMessageLiveLocation(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        latitude: latitude,
        longitude: longitude,
        horizontalAccuracy: horizontalAccuracy,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        replyMarkup: replyMarkup);
    final request = RequestEditMessageLiveLocation(requestParameters);
    return _client.send(request);
  }

  Future<ResponseStopMessageLiveLocation> stopMessageLiveLocation(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersStopMessageLiveLocation(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    final request = RequestStopMessageLiveLocation(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendVenue> sendVenue(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendVenue(
        chatId: chatId,
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
    final request = RequestSendVenue(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendContact> sendContact(
      {
      // int | String
      required Object chatId,
      required String phoneNumber,
      required String firstName,
      String? lastName,
      String? vcard,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendContact(
        chatId: chatId,
        phoneNumber: phoneNumber,
        firstName: firstName,
        lastName: lastName,
        vcard: vcard,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendContact(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendPoll> sendPoll(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendPoll(
        chatId: chatId,
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
    final request = RequestSendPoll(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendDice> sendDice(
      {
      // int | String
      required Object chatId,
      // DiceEmoji
      String? emoji,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendDice(
        chatId: chatId,
        emoji: emoji,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendDice(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendChatAction> sendChatAction(
      {
      // int | String
      required Object chatId,
      // ChatAction
      required String action}) {
    final requestParameters =
        RequestParametersSendChatAction(chatId: chatId, action: action);
    final request = RequestSendChatAction(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetUserProfilePhotos> getUserProfilePhotos(
      {required int userId, int? offset, int? limit}) {
    final requestParameters = RequestParametersGetUserProfilePhotos(
        userId: userId, offset: offset, limit: limit);
    final request = RequestGetUserProfilePhotos(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetFile> getFile({required String fileId}) {
    final requestParameters = RequestParametersGetFile(fileId: fileId);
    final request = RequestGetFile(requestParameters);
    return _client.send(request);
  }

  Future<ResponseBanChatMember> banChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      int? untilDate,
      bool? revokeMessages}) {
    final requestParameters = RequestParametersBanChatMember(
        chatId: chatId,
        userId: userId,
        untilDate: untilDate,
        revokeMessages: revokeMessages);
    final request = RequestBanChatMember(requestParameters);
    return _client.send(request);
  }

  Future<ResponseUnbanChatMember> unbanChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? onlyIfBanned}) {
    final requestParameters = RequestParametersUnbanChatMember(
        chatId: chatId, userId: userId, onlyIfBanned: onlyIfBanned);
    final request = RequestUnbanChatMember(requestParameters);
    return _client.send(request);
  }

  Future<ResponseRestrictChatMember> restrictChatMember(
      {
      // int | String
      required Object chatId,
      required int userId,
      required ChatPermissions permissions,
      int? untilDate}) {
    final requestParameters = RequestParametersRestrictChatMember(
        chatId: chatId,
        userId: userId,
        permissions: permissions,
        untilDate: untilDate);
    final request = RequestRestrictChatMember(requestParameters);
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
      bool? canPinMessages}) {
    final requestParameters = RequestParametersPromoteChatMember(
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
        canPinMessages: canPinMessages);
    final request = RequestPromoteChatMember(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatAdministratorCustomTitle>
      setChatAdministratorCustomTitle(
          {
          // int | String
          required Object chatId,
          required int userId,
          required String customTitle}) {
    final requestParameters = RequestParametersSetChatAdministratorCustomTitle(
        chatId: chatId, userId: userId, customTitle: customTitle);
    return _client
        .send(RequestSetChatAdministratorCustomTitle(requestParameters));
  }

  Future<ResponseBanChatSenderChat> banChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final requestParameters = RequestParametersBanChatSenderChat(
        chatId: chatId, senderChatId: senderChatId);
    final request = RequestBanChatSenderChat(requestParameters);
    return _client.send(request);
  }

  Future<ResponseUnbanChatSenderChat> unbanChatSenderChat(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final requestParameters = RequestParametersUnbanChatSenderChat(
        chatId: chatId, senderChatId: senderChatId);
    final request = RequestUnbanChatSenderChat(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatPermissions> setChatPermissions(
      {
      // int | String
      required Object chatId,
      required ChatPermissions permissions}) {
    final requestParameters = RequestParametersSetChatPermissions(
        chatId: chatId, permissions: permissions);
    final request = RequestSetChatPermissions(requestParameters);
    return _client.send(request);
  }

  Future<ResponseExportChatInviteLink> exportChatInviteLink(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersExportChatInviteLink(chatId: chatId);
    final request = RequestExportChatInviteLink(requestParameters);
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
    final requestParameters = RequestParametersCreateChatInviteLink(
        chatId: chatId,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    final request = RequestCreateChatInviteLink(requestParameters);
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
    final requestParameters = RequestParametersEditChatInviteLink(
        chatId: chatId,
        inviteLink: inviteLink,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    final request = RequestEditChatInviteLink(requestParameters);
    return _client.send(request);
  }

  Future<ResponseRevokeChatInviteLink> revokeChatInviteLink(
      {
      // int | String
      required Object chatId,
      required String inviteLink}) {
    final requestParameters = RequestParametersRevokeChatInviteLink(
        chatId: chatId, inviteLink: inviteLink);
    final request = RequestRevokeChatInviteLink(requestParameters);
    return _client.send(request);
  }

  Future<ResponseApproveChatJoinRequest> approveChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersApproveChatJoinRequest(chatId: chatId, userId: userId);
    final request = RequestApproveChatJoinRequest(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeclineChatJoinRequest> declineChatJoinRequest(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersDeclineChatJoinRequest(chatId: chatId, userId: userId);
    final request = RequestDeclineChatJoinRequest(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatPhoto> setChatPhoto(
      {
      // int | String
      required Object chatId,
      required InputFile photo}) {
    final requestParameters =
        RequestParametersSetChatPhoto(chatId: chatId, photo: photo);
    final request = RequestSetChatPhoto(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteChatPhoto> deleteChatPhoto(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersDeleteChatPhoto(chatId: chatId);
    final request = RequestDeleteChatPhoto(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatTitle> setChatTitle(
      {
      // int | String
      required Object chatId,
      required String title}) {
    final requestParameters =
        RequestParametersSetChatTitle(chatId: chatId, title: title);
    final request = RequestSetChatTitle(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatDescription> setChatDescription(
      {
      // int | String
      required Object chatId,
      String? description}) {
    final requestParameters = RequestParametersSetChatDescription(
        chatId: chatId, description: description);
    final request = RequestSetChatDescription(requestParameters);
    return _client.send(request);
  }

  Future<ResponsePinChatMessage> pinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId,
      bool? disableNotification}) {
    final requestParameters = RequestParametersPinChatMessage(
        chatId: chatId,
        messageId: messageId,
        disableNotification: disableNotification);
    final request = RequestPinChatMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseUnpinChatMessage> unpinChatMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final requestParameters =
        RequestParametersUnpinChatMessage(chatId: chatId, messageId: messageId);
    final request = RequestUnpinChatMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseUnpinAllChatMessages> unpinAllChatMessages(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersUnpinAllChatMessages(chatId: chatId);
    final request = RequestUnpinAllChatMessages(requestParameters);
    return _client.send(request);
  }

  Future<ResponseLeaveChat> leaveChat(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersLeaveChat(chatId: chatId);
    final request = RequestLeaveChat(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetChat> getChat(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersGetChat(chatId: chatId);
    final request = RequestGetChat(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetChatAdministrators> getChatAdministrators(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersGetChatAdministrators(chatId: chatId);
    final request = RequestGetChatAdministrators(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetChatMemberCount> getChatMemberCount(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersGetChatMemberCount(chatId: chatId);
    final request = RequestGetChatMemberCount(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetChatMember> getChatMember(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersGetChatMember(chatId: chatId, userId: userId);
    final request = RequestGetChatMember(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatStickerSet> setChatStickerSet(
      {
      // int | String
      required Object chatId,
      required String stickerSetName}) {
    final requestParameters = RequestParametersSetChatStickerSet(
        chatId: chatId, stickerSetName: stickerSetName);
    final request = RequestSetChatStickerSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteChatStickerSet> deleteChatStickerSet(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersDeleteChatStickerSet(chatId: chatId);
    final request = RequestDeleteChatStickerSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseAnswerCallbackQuery> answerCallbackQuery(
      {required String callbackQueryId,
      String? text,
      bool? showAlert,
      String? url,
      int? cacheTime}) {
    final requestParameters = RequestParametersAnswerCallbackQuery(
        callbackQueryId: callbackQueryId,
        text: text,
        showAlert: showAlert,
        url: url,
        cacheTime: cacheTime);
    final request = RequestAnswerCallbackQuery(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetMyCommands> setMyCommands(
      {required List<BotCommand> commands,
      BotCommandScope? scope,
      String? languageCode}) {
    final requestParameters = RequestParametersSetMyCommands(
        commands: commands, scope: scope, languageCode: languageCode);
    final request = RequestSetMyCommands(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteMyCommands> deleteMyCommands(
      {BotCommandScope? scope, String? languageCode}) {
    final requestParameters = RequestParametersDeleteMyCommands(
        scope: scope, languageCode: languageCode);
    final request = RequestDeleteMyCommands(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetMyCommands> getMyCommands(
      {BotCommandScope? scope, String? languageCode}) {
    final requestParameters = RequestParametersGetMyCommands(
        scope: scope, languageCode: languageCode);
    final request = RequestGetMyCommands(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetChatMenuButton> setChatMenuButton(
      {int? chatId, MenuButton? menuButton}) {
    final requestParameters = RequestParametersSetChatMenuButton(
        chatId: chatId, menuButton: menuButton);
    final request = RequestSetChatMenuButton(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetChatMenuButton> getChatMenuButton({int? chatId}) {
    final requestParameters =
        RequestParametersGetChatMenuButton(chatId: chatId);
    final request = RequestGetChatMenuButton(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetMyDefaultAdministratorRights>
      setMyDefaultAdministratorRights(
          {ChatAdministratorRights? rights, bool? forChannels}) {
    final requestParameters = RequestParametersSetMyDefaultAdministratorRights(
        rights: rights, forChannels: forChannels);
    return _client
        .send(RequestSetMyDefaultAdministratorRights(requestParameters));
  }

  Future<ResponseGetMyDefaultAdministratorRights>
      getMyDefaultAdministratorRights({bool? forChannels}) {
    final requestParameters = RequestParametersGetMyDefaultAdministratorRights(
        forChannels: forChannels);
    return _client
        .send(RequestGetMyDefaultAdministratorRights(requestParameters));
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
    final requestParameters = RequestParametersEditMessageText(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        text: text,
        parseMode: parseMode,
        entities: entities,
        disableWebPagePreview: disableWebPagePreview,
        replyMarkup: replyMarkup);
    final request = RequestEditMessageText(requestParameters);
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
    final requestParameters = RequestParametersEditMessageCaption(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup);
    final request = RequestEditMessageCaption(requestParameters);
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
    final requestParameters = RequestParametersEditMessageMedia(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        media: media,
        replyMarkup: replyMarkup);
    final request = RequestEditMessageMedia(requestParameters);
    return _client.send(request);
  }

  Future<ResponseEditMessageReplyMarkup> editMessageReplyMarkup(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageReplyMarkup(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        replyMarkup: replyMarkup);
    final request = RequestEditMessageReplyMarkup(requestParameters);
    return _client.send(request);
  }

  Future<ResponseStopPoll> stopPoll(
      {
      // int | String
      required Object chatId,
      required int messageId,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersStopPoll(
        chatId: chatId, messageId: messageId, replyMarkup: replyMarkup);
    final request = RequestStopPoll(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteMessage> deleteMessage(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final requestParameters =
        RequestParametersDeleteMessage(chatId: chatId, messageId: messageId);
    final request = RequestDeleteMessage(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendSticker> sendSticker(
      {
      // int | String
      required Object chatId,
      // InputFile | String
      required Object sticker,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendSticker(
        chatId: chatId,
        sticker: sticker,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendSticker(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetStickerSet> getStickerSet({required String name}) {
    final requestParameters = RequestParametersGetStickerSet(name: name);
    final request = RequestGetStickerSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetCustomEmojiStickers> getCustomEmojiStickers(
      {required List<String> customEmojiIds}) {
    final requestParameters =
        RequestParametersGetCustomEmojiStickers(customEmojiIds: customEmojiIds);
    final request = RequestGetCustomEmojiStickers(requestParameters);
    return _client.send(request);
  }

  Future<ResponseUploadStickerFile> uploadStickerFile(
      {required int userId, required InputFile pngSticker}) {
    final requestParameters = RequestParametersUploadStickerFile(
        userId: userId, pngSticker: pngSticker);
    final request = RequestUploadStickerFile(requestParameters);
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
    final requestParameters = RequestParametersCreateNewStickerSet(
        userId: userId,
        name: name,
        title: title,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        stickerType: stickerType,
        emojis: emojis,
        maskPosition: maskPosition);
    final request = RequestCreateNewStickerSet(requestParameters);
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
    final requestParameters = RequestParametersAddStickerToSet(
        userId: userId,
        name: name,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        emojis: emojis,
        maskPosition: maskPosition);
    final request = RequestAddStickerToSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetStickerPositionInSet> setStickerPositionInSet(
      {required String sticker, required int position}) {
    final requestParameters = RequestParametersSetStickerPositionInSet(
        sticker: sticker, position: position);
    final request = RequestSetStickerPositionInSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseDeleteStickerFromSet> deleteStickerFromSet(
      {required String sticker}) {
    final requestParameters =
        RequestParametersDeleteStickerFromSet(sticker: sticker);
    final request = RequestDeleteStickerFromSet(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetStickerSetThumb> setStickerSetThumb(
      {required String name,
      required int userId,
      // InputFile | String
      Object? thumb}) {
    final requestParameters = RequestParametersSetStickerSetThumb(
        name: name, userId: userId, thumb: thumb);
    final request = RequestSetStickerSetThumb(requestParameters);
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
    final requestParameters = RequestParametersAnswerInlineQuery(
        inlineQueryId: inlineQueryId,
        results: results,
        cacheTime: cacheTime,
        isPersonal: isPersonal,
        nextOffset: nextOffset,
        switchPmText: switchPmText,
        switchPmParameter: switchPmParameter);
    final request = RequestAnswerInlineQuery(requestParameters);
    return _client.send(request);
  }

  Future<ResponseAnswerWebAppQuery> answerWebAppQuery(
      {required String webAppQueryId, required InlineQueryResult result}) {
    final requestParameters = RequestParametersAnswerWebAppQuery(
        webAppQueryId: webAppQueryId, result: result);
    final request = RequestAnswerWebAppQuery(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendInvoice> sendInvoice(
      {
      // int | String
      required Object chatId,
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
    final requestParameters = RequestParametersSendInvoice(
        chatId: chatId,
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
    final request = RequestSendInvoice(requestParameters);
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
    final requestParameters = RequestParametersCreateInvoiceLink(
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
    final request = RequestCreateInvoiceLink(requestParameters);
    return _client.send(request);
  }

  Future<ResponseAnswerShippingQuery> answerShippingQuery(
      {required String shippingQueryId,
      required bool ok,
      List<ShippingOption>? shippingOptions,
      String? errorMessage}) {
    final requestParameters = RequestParametersAnswerShippingQuery(
        shippingQueryId: shippingQueryId,
        ok: ok,
        shippingOptions: shippingOptions,
        errorMessage: errorMessage);
    final request = RequestAnswerShippingQuery(requestParameters);
    return _client.send(request);
  }

  Future<ResponseAnswerPreCheckoutQuery> answerPreCheckoutQuery(
      {required String preCheckoutQueryId,
      required bool ok,
      String? errorMessage}) {
    final requestParameters = RequestParametersAnswerPreCheckoutQuery(
        preCheckoutQueryId: preCheckoutQueryId,
        ok: ok,
        errorMessage: errorMessage);
    final request = RequestAnswerPreCheckoutQuery(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSetPassportDataErrors> setPassportDataErrors(
      {required int userId, required List<PassportElementError> errors}) {
    final requestParameters =
        RequestParametersSetPassportDataErrors(userId: userId, errors: errors);
    final request = RequestSetPassportDataErrors(requestParameters);
    return _client.send(request);
  }

  Future<ResponseSendGame> sendGame(
      {required int chatId,
      required String gameShortName,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendGame(
        chatId: chatId,
        gameShortName: gameShortName,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    final request = RequestSendGame(requestParameters);
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
    final requestParameters = RequestParametersSetGameScore(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId,
        score: score,
        force: force,
        disableEditMessage: disableEditMessage);
    final request = RequestSetGameScore(requestParameters);
    return _client.send(request);
  }

  Future<ResponseGetGameHighScores> getGameHighScores(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required int userId}) {
    final requestParameters = RequestParametersGetGameHighScores(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        userId: userId);
    final request = RequestGetGameHighScores(requestParameters);
    return _client.send(request);
  }
}
