import 'client/client.dart';
import 'client/error.dart';
import 'client/request.dart';
import 'client/response.dart';
import 'models/bot_command.dart';
import 'models/bot_command_scope.dart';
import 'models/chat.dart';
import 'models/chat_administrator_rights.dart';
import 'models/chat_invite_link.dart';
import 'models/chat_member.dart';
import 'models/chat_permissions.dart';
import 'models/file.dart';
import 'models/game_high_score.dart';
import 'models/inline_keyboard_markup.dart';
import 'models/inline_query_result.dart';
import 'models/input_file.dart';
import 'models/input_media.dart';
import 'models/labeled_price.dart';
import 'models/mask_position.dart';
import 'models/menu_button.dart';
import 'models/message.dart';
import 'models/message_entity.dart';
import 'models/message_id.dart';
import 'models/passport_element_error.dart';
import 'models/poll.dart';
import 'models/reply_markup.dart';
import 'models/sent_web_app_message.dart';
import 'models/shipping_option.dart';
import 'models/sticker.dart';
import 'models/sticker_set.dart';
import 'models/update.dart';
import 'models/user.dart';
import 'models/user_profile_photos.dart';
import 'models/webhook_info.dart';

class TelegramBotApi {
  final Client client;

  TelegramBotApi(String token,
      {Uri? baseUrl,
      void Function(Request)? onRequest,
      void Function(Response)? onResponse,
      void Function(ApiError)? onError})
      : client = Client(token,
            baseUrl: baseUrl,
            onRequest: onRequest,
            onResponse: onResponse,
            onError: onError);

  Future<List<Update>> getUpdates(
          {int? offset,
          int? limit,
          int? timeout,
          // List<UpdateType>
          List<String>? allowedUpdates}) async =>
      (await client.api.getUpdates(
              offset: offset,
              limit: limit,
              timeout: timeout,
              allowedUpdates: allowedUpdates))
          .resultOrThrowIfError();

  Future<bool> setWebhook(
          {required String url,
          InputFile? certificate,
          String? ipAddress,
          int? maxConnections,
          // List<UpdateType,
          List<String>? allowedUpdates,
          bool? dropPendingUpdates,
          String? secretToken}) async =>
      (await client.api.setWebhook(
              url: url,
              certificate: certificate,
              ipAddress: ipAddress,
              maxConnections: maxConnections,
              allowedUpdates: allowedUpdates,
              dropPendingUpdates: dropPendingUpdates,
              secretToken: secretToken))
          .resultOrThrowIfError();

  Future<bool> deleteWebhook({bool? dropPendingUpdates}) async =>
      (await client.api.deleteWebhook(dropPendingUpdates: dropPendingUpdates))
          .resultOrThrowIfError();

  Future<WebhookInfo> getWebhookInfo() async =>
      (await client.api.getWebhookInfo()).resultOrThrowIfError();

  Future<User> getMe() async =>
      (await client.api.getMe()).resultOrThrowIfError();

  Future<bool> logOut() async =>
      (await client.api.logOut()).resultOrThrowIfError();

  Future<bool> close() async =>
      (await client.api.close()).resultOrThrowIfError();

  Future<Message> sendMessage(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendMessage(
              chatId: chatId,
              text: text,
              parseMode: parseMode,
              entities: entities,
              disableWebPagePreview: disableWebPagePreview,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> forwardMessage(
          {
          // int | String
          required Object chatId,
          // int | String
          required Object fromChatId,
          required int messageId,
          bool? disableNotification,
          bool? protectContent}) async =>
      (await client.api.forwardMessage(
              chatId: chatId,
              fromChatId: fromChatId,
              messageId: messageId,
              disableNotification: disableNotification,
              protectContent: protectContent))
          .resultOrThrowIfError();

  Future<MessageId> copyMessage(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.copyMessage(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendPhoto(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendPhoto(
              chatId: chatId,
              photo: photo,
              caption: caption,
              parseMode: parseMode,
              captionEntities: captionEntities,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendAudio(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendAudio(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendDocument(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendDocument(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendVideo(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendVideo(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendAnimation(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendAnimation(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendVoice(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendVoice(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendVideoNote(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendVideoNote(
              chatId: chatId,
              videoNote: videoNote,
              duration: duration,
              length: length,
              thumb: thumb,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<List<Message>> sendMediaGroup(
          {
          // int | String
          required Object chatId,
          required List<InputMedia> media,
          bool? disableNotification,
          bool? protectContent,
          int? replyToMessageId,
          bool? allowSendingWithoutReply}) async =>
      (await client.api.sendMediaGroup(
              chatId: chatId,
              media: media,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply))
          .resultOrThrowIfError();

  Future<Message> sendLocation(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendLocation(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> editMessageLiveLocation(
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
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.editMessageLiveLocation(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              latitude: latitude,
              longitude: longitude,
              horizontalAccuracy: horizontalAccuracy,
              heading: heading,
              proximityAlertRadius: proximityAlertRadius,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> stopMessageLiveLocation(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.stopMessageLiveLocation(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendVenue(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendVenue(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendContact(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendContact(
              chatId: chatId,
              phoneNumber: phoneNumber,
              firstName: firstName,
              lastName: lastName,
              vcard: vcard,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendPoll(
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
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendPoll(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Message> sendDice(
          {
          // int | String
          required Object chatId,
          // DiceEmoji
          String? emoji,
          bool? disableNotification,
          bool? protectContent,
          int? replyToMessageId,
          bool? allowSendingWithoutReply,
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendDice(
              chatId: chatId,
              emoji: emoji,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<bool> sendChatAction(
          {
          // int | String
          required Object chatId,
          // ChatAction
          required String action}) async =>
      (await client.api.sendChatAction(chatId: chatId, action: action))
          .resultOrThrowIfError();

  Future<UserProfilePhotos> getUserProfilePhotos(
          {required int userId, int? offset, int? limit}) async =>
      (await client.api.getUserProfilePhotos(
              userId: userId, offset: offset, limit: limit))
          .resultOrThrowIfError();

  Future<File> getFile({required String fileId}) async =>
      (await client.api.getFile(fileId: fileId)).resultOrThrowIfError();

  Future<bool> banChatMember(
          {
          // int | String
          required Object chatId,
          required int userId,
          int? untilDate,
          bool? revokeMessages}) async =>
      (await client.api.banChatMember(
              chatId: chatId,
              userId: userId,
              untilDate: untilDate,
              revokeMessages: revokeMessages))
          .resultOrThrowIfError();

  Future<bool> unbanChatMember(
          {
          // int | String
          required Object chatId,
          required int userId,
          bool? onlyIfBanned}) async =>
      (await client.api.unbanChatMember(
              chatId: chatId, userId: userId, onlyIfBanned: onlyIfBanned))
          .resultOrThrowIfError();

  Future<bool> restrictChatMember(
          {
          // int | String
          required Object chatId,
          required int userId,
          required ChatPermissions permissions,
          int? untilDate}) async =>
      (await client.api.restrictChatMember(
              chatId: chatId,
              userId: userId,
              permissions: permissions,
              untilDate: untilDate))
          .resultOrThrowIfError();

  Future<bool> promoteChatMember(
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
          bool? canPinMessages}) async =>
      (await client.api.promoteChatMember(
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
              canPinMessages: canPinMessages))
          .resultOrThrowIfError();

  Future<bool> setChatAdministratorCustomTitle(
          {
          // int | String
          required Object chatId,
          required int userId,
          required String customTitle}) async =>
      (await client.api.setChatAdministratorCustomTitle(
              chatId: chatId, userId: userId, customTitle: customTitle))
          .resultOrThrowIfError();

  Future<bool> banChatSenderChat(
          {
          // int | String
          required Object chatId,
          required int senderChatId}) async =>
      (await client.api
              .banChatSenderChat(chatId: chatId, senderChatId: senderChatId))
          .resultOrThrowIfError();

  Future<bool> unbanChatSenderChat(
          {
          // int | String
          required Object chatId,
          required int senderChatId}) async =>
      (await client.api
              .unbanChatSenderChat(chatId: chatId, senderChatId: senderChatId))
          .resultOrThrowIfError();

  Future<bool> setChatPermissions(
          {
          // int | String
          required Object chatId,
          required ChatPermissions permissions}) async =>
      (await client.api
              .setChatPermissions(chatId: chatId, permissions: permissions))
          .resultOrThrowIfError();

  Future<String> exportChatInviteLink(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.exportChatInviteLink(chatId: chatId))
          .resultOrThrowIfError();

  Future<ChatInviteLink> createChatInviteLink(
          {
          // int | String
          required Object chatId,
          String? name,
          int? expireDate,
          int? memberLimit,
          bool? createsJoinRequest}) async =>
      (await client.api.createChatInviteLink(
              chatId: chatId,
              name: name,
              expireDate: expireDate,
              memberLimit: memberLimit,
              createsJoinRequest: createsJoinRequest))
          .resultOrThrowIfError();

  Future<ChatInviteLink> editChatInviteLink(
          {
          // int | String
          required Object chatId,
          required String inviteLink,
          String? name,
          int? expireDate,
          int? memberLimit,
          bool? createsJoinRequest}) async =>
      (await client.api.editChatInviteLink(
              chatId: chatId,
              inviteLink: inviteLink,
              name: name,
              expireDate: expireDate,
              memberLimit: memberLimit,
              createsJoinRequest: createsJoinRequest))
          .resultOrThrowIfError();

  Future<ChatInviteLink> revokeChatInviteLink(
          {
          // int | String
          required Object chatId,
          required String inviteLink}) async =>
      (await client.api
              .revokeChatInviteLink(chatId: chatId, inviteLink: inviteLink))
          .resultOrThrowIfError();

  Future<bool> approveChatJoinRequest(
          {
          // int | String
          required Object chatId,
          required int userId}) async =>
      (await client.api.approveChatJoinRequest(chatId: chatId, userId: userId))
          .resultOrThrowIfError();

  Future<bool> declineChatJoinRequest(
          {
          // int | String
          required Object chatId,
          required int userId}) async =>
      (await client.api.declineChatJoinRequest(chatId: chatId, userId: userId))
          .resultOrThrowIfError();

  Future<bool> setChatPhoto(
          {
          // int | String
          required Object chatId,
          required InputFile photo}) async =>
      (await client.api.setChatPhoto(chatId: chatId, photo: photo))
          .resultOrThrowIfError();

  Future<bool> deleteChatPhoto(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.deleteChatPhoto(chatId: chatId)).resultOrThrowIfError();

  Future<bool> setChatTitle(
          {
          // int | String
          required Object chatId,
          required String title}) async =>
      (await client.api.setChatTitle(chatId: chatId, title: title))
          .resultOrThrowIfError();

  Future<bool> setChatDescription(
          {
          // int | String
          required Object chatId,
          String? description}) async =>
      (await client.api
              .setChatDescription(chatId: chatId, description: description))
          .resultOrThrowIfError();

  Future<bool> pinChatMessage(
          {
          // int | String
          required Object chatId,
          required int messageId,
          bool? disableNotification}) async =>
      (await client.api.pinChatMessage(
              chatId: chatId,
              messageId: messageId,
              disableNotification: disableNotification))
          .resultOrThrowIfError();

  Future<bool> unpinChatMessage(
          {
          // int | String
          required Object chatId,
          required int messageId}) async =>
      (await client.api.unpinChatMessage(chatId: chatId, messageId: messageId))
          .resultOrThrowIfError();

  Future<bool> unpinAllChatMessages(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.unpinAllChatMessages(chatId: chatId))
          .resultOrThrowIfError();

  Future<bool> leaveChat(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.leaveChat(chatId: chatId)).resultOrThrowIfError();

  Future<Chat> getChat(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.getChat(chatId: chatId)).resultOrThrowIfError();

  Future<List<ChatMember>> getChatAdministrators(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.getChatAdministrators(chatId: chatId))
          .resultOrThrowIfError();

  Future<int> getChatMemberCount(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.getChatMemberCount(chatId: chatId))
          .resultOrThrowIfError();

  Future<ChatMember> getChatMember(
          {
          // int | String
          required Object chatId,
          required int userId}) async =>
      (await client.api.getChatMember(chatId: chatId, userId: userId))
          .resultOrThrowIfError();

  Future<bool> setChatStickerSet(
          {
          // int | String
          required Object chatId,
          required String stickerSetName}) async =>
      (await client.api.setChatStickerSet(
              chatId: chatId, stickerSetName: stickerSetName))
          .resultOrThrowIfError();

  Future<bool> deleteChatStickerSet(
          {
          // int | String
          required Object chatId}) async =>
      (await client.api.deleteChatStickerSet(chatId: chatId))
          .resultOrThrowIfError();

  Future<bool> answerCallbackQuery(
          {required String callbackQueryId,
          String? text,
          bool? showAlert,
          String? url,
          int? cacheTime}) async =>
      (await client.api.answerCallbackQuery(
              callbackQueryId: callbackQueryId,
              text: text,
              showAlert: showAlert,
              url: url,
              cacheTime: cacheTime))
          .resultOrThrowIfError();

  Future<bool> setMyCommands(
          {required List<BotCommand> commands,
          BotCommandScope? scope,
          String? languageCode}) async =>
      (await client.api.setMyCommands(
              commands: commands, scope: scope, languageCode: languageCode))
          .resultOrThrowIfError();

  Future<bool> deleteMyCommands(
          {BotCommandScope? scope, String? languageCode}) async =>
      (await client.api
              .deleteMyCommands(scope: scope, languageCode: languageCode))
          .resultOrThrowIfError();

  Future<List<BotCommand>> getMyCommands(
          {BotCommandScope? scope, String? languageCode}) async =>
      (await client.api.getMyCommands(scope: scope, languageCode: languageCode))
          .resultOrThrowIfError();

  Future<bool> setChatMenuButton({int? chatId, MenuButton? menuButton}) async =>
      (await client.api
              .setChatMenuButton(chatId: chatId, menuButton: menuButton))
          .resultOrThrowIfError();

  Future<MenuButton> getChatMenuButton({int? chatId}) async =>
      (await client.api.getChatMenuButton(chatId: chatId))
          .resultOrThrowIfError();

  Future<bool> setMyDefaultAdministratorRights(
          {ChatAdministratorRights? rights, bool? forChannels}) async =>
      (await client.api.setMyDefaultAdministratorRights(
              rights: rights, forChannels: forChannels))
          .resultOrThrowIfError();

  Future<ChatAdministratorRights> getMyDefaultAdministratorRights(
          {bool? forChannels}) async =>
      (await client.api
              .getMyDefaultAdministratorRights(forChannels: forChannels))
          .resultOrThrowIfError();

  Future<Object> editMessageText(
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
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.editMessageText(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              text: text,
              parseMode: parseMode,
              entities: entities,
              disableWebPagePreview: disableWebPagePreview,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> editMessageCaption(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          required String caption,
          // ParseMode
          String? parseMode,
          List<MessageEntity>? captionEntities,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.editMessageCaption(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              caption: caption,
              parseMode: parseMode,
              captionEntities: captionEntities,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> editMessageMedia(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          required InputMedia media,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.editMessageMedia(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              media: media,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> editMessageReplyMarkup(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.editMessageReplyMarkup(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Poll> stopPoll(
          {
          // int | String
          required Object chatId,
          required int messageId,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.stopPoll(
              chatId: chatId, messageId: messageId, replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<bool> deleteMessage(
          {
          // int | String
          required Object chatId,
          required int messageId}) async =>
      (await client.api.deleteMessage(chatId: chatId, messageId: messageId))
          .resultOrThrowIfError();

  Future<Message> sendSticker(
          {
          // int | String
          required Object chatId,
          // InputFile | String
          required Object sticker,
          bool? disableNotification,
          bool? protectContent,
          int? replyToMessageId,
          bool? allowSendingWithoutReply,
          ReplyMarkup? replyMarkup}) async =>
      (await client.api.sendSticker(
              chatId: chatId,
              sticker: sticker,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<StickerSet> getStickerSet({required String name}) async =>
      (await client.api.getStickerSet(name: name)).resultOrThrowIfError();

  Future<List<Sticker>> getCustomEmojiStickers(
          {required List<String> customEmojiIds}) async =>
      (await client.api.getCustomEmojiStickers(customEmojiIds: customEmojiIds))
          .resultOrThrowIfError();

  Future<File> uploadStickerFile(
          {required int userId, required InputFile pngSticker}) async =>
      (await client.api
              .uploadStickerFile(userId: userId, pngSticker: pngSticker))
          .resultOrThrowIfError();

  Future<bool> createNewStickerSet(
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
          MaskPosition? maskPosition}) async =>
      (await client.api.createNewStickerSet(
              userId: userId,
              name: name,
              title: title,
              pngSticker: pngSticker,
              tgsSticker: tgsSticker,
              webmSticker: webmSticker,
              stickerType: stickerType,
              emojis: emojis,
              maskPosition: maskPosition))
          .resultOrThrowIfError();

  Future<bool> addStickerToSet(
          {required int userId,
          required String name,
          // InputFile | String
          Object? pngSticker,
          InputFile? tgsSticker,
          InputFile? webmSticker,
          required String emojis,
          MaskPosition? maskPosition}) async =>
      (await client.api.addStickerToSet(
              userId: userId,
              name: name,
              pngSticker: pngSticker,
              tgsSticker: tgsSticker,
              webmSticker: webmSticker,
              emojis: emojis,
              maskPosition: maskPosition))
          .resultOrThrowIfError();

  Future<bool> setStickerPositionInSet(
          {required String sticker, required int position}) async =>
      (await client.api
              .setStickerPositionInSet(sticker: sticker, position: position))
          .resultOrThrowIfError();

  Future<bool> deleteStickerFromSet({required String sticker}) async =>
      (await client.api.deleteStickerFromSet(sticker: sticker))
          .resultOrThrowIfError();

  Future<bool> setStickerSetThumb(
          {required String name,
          required int userId,
          // InputFile | String
          Object? thumb}) async =>
      (await client.api
              .setStickerSetThumb(name: name, userId: userId, thumb: thumb))
          .resultOrThrowIfError();

  Future<bool> answerInlineQuery(
          {required String inlineQueryId,
          required List<InlineQueryResult> results,
          int? cacheTime,
          bool? isPersonal,
          String? nextOffset,
          String? switchPmText,
          String? switchPmParameter}) async =>
      (await client.api.answerInlineQuery(
              inlineQueryId: inlineQueryId,
              results: results,
              cacheTime: cacheTime,
              isPersonal: isPersonal,
              nextOffset: nextOffset,
              switchPmText: switchPmText,
              switchPmParameter: switchPmParameter))
          .resultOrThrowIfError();

  Future<SentWebAppMessage> answerWebAppQuery(
          {required String webAppQueryId,
          required InlineQueryResult result}) async =>
      (await client.api
              .answerWebAppQuery(webAppQueryId: webAppQueryId, result: result))
          .resultOrThrowIfError();

  Future<Message> sendInvoice(
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
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.sendInvoice(
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
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<String> createInvoiceLink(
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
          bool? isFlexible}) async =>
      (await client.api.createInvoiceLink(
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
              isFlexible: isFlexible))
          .resultOrThrowIfError();

  Future<bool> answerShippingQuery(
          {required String shippingQueryId,
          required bool ok,
          List<ShippingOption>? shippingOptions,
          String? errorMessage}) async =>
      (await client.api.answerShippingQuery(
              shippingQueryId: shippingQueryId,
              ok: ok,
              shippingOptions: shippingOptions,
              errorMessage: errorMessage))
          .resultOrThrowIfError();

  Future<bool> answerPreCheckoutQuery(
          {required String preCheckoutQueryId,
          required bool ok,
          String? errorMessage}) async =>
      (await client.api.answerPreCheckoutQuery(
              preCheckoutQueryId: preCheckoutQueryId,
              ok: ok,
              errorMessage: errorMessage))
          .resultOrThrowIfError();

  Future<bool> setPassportDataErrors(
          {required int userId,
          required List<PassportElementError> errors}) async =>
      (await client.api.setPassportDataErrors(userId: userId, errors: errors))
          .resultOrThrowIfError();

  Future<Message> sendGame(
          {required int chatId,
          required String gameShortName,
          bool? disableNotification,
          bool? protectContent,
          int? replyToMessageId,
          bool? allowSendingWithoutReply,
          InlineKeyboardMarkup? replyMarkup}) async =>
      (await client.api.sendGame(
              chatId: chatId,
              gameShortName: gameShortName,
              disableNotification: disableNotification,
              protectContent: protectContent,
              replyToMessageId: replyToMessageId,
              allowSendingWithoutReply: allowSendingWithoutReply,
              replyMarkup: replyMarkup))
          .resultOrThrowIfError();

  Future<Object> setGameScore(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          required int userId,
          required int score,
          bool? force,
          bool? disableEditMessage}) async =>
      (await client.api.setGameScore(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              userId: userId,
              score: score,
              force: force,
              disableEditMessage: disableEditMessage))
          .resultOrThrowIfError();

  Future<List<GameHighScore>> getGameHighScores(
          {
          // int | String
          Object? chatId,
          int? messageId,
          String? inlineMessageId,
          required int userId}) async =>
      (await client.api.getGameHighScores(
              chatId: chatId,
              messageId: messageId,
              inlineMessageId: inlineMessageId,
              userId: userId))
          .resultOrThrowIfError();
}
