import 'message.dart';
import 'inline_query.dart';
import 'chosen_inline_result.dart';
import 'callback_query.dart';
import 'shipping_query.dart';
import 'pre_checkout_query.dart';
import 'poll.dart';
import 'poll_answer.dart';
import 'chat_member_updated.dart';
import 'chat_join_request.dart';

class Update {
  final int updateId;
  final Message? message;
  final Message? editedMessage;
  final Message? channelPost;
  final Message? editedChannelPost;
  final InlineQuery? inlineQuery;
  final ChosenInlineResult? chosenInlineResult;
  final CallbackQuery? callbackQuery;
  final ShippingQuery? shippingQuery;
  final PreCheckoutQuery? preCheckoutQuery;
  final Poll? poll;
  final PollAnswer? pollAnswer;
  final ChatMemberUpdated? myChatMember;
  final ChatMemberUpdated? chatMember;
  final ChatJoinRequest? chatJoinRequest;

  Update(
      {required this.updateId,
      this.message,
      this.editedMessage,
      this.channelPost,
      this.editedChannelPost,
      this.inlineQuery,
      this.chosenInlineResult,
      this.callbackQuery,
      this.shippingQuery,
      this.preCheckoutQuery,
      this.poll,
      this.pollAnswer,
      this.myChatMember,
      this.chatMember,
      this.chatJoinRequest});

  factory Update.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonMessage = json['message'];
    Message? message;
    if (jsonMessage != null) {
      message = Message.fromJson(jsonMessage);
    }
    Map<String, dynamic>? jsonEditedMessage = json['edited_message'];
    Message? editedMessage;
    if (jsonEditedMessage != null) {
      editedMessage = Message.fromJson(jsonEditedMessage);
    }
    Map<String, dynamic>? jsonChannelPost = json['channel_post'];
    Message? channelPost;
    if (jsonChannelPost != null) {
      channelPost = Message.fromJson(jsonChannelPost);
    }
    Map<String, dynamic>? jsonEditedChannelPost = json['edited_channel_post'];
    Message? editedChannelPost;
    if (jsonEditedChannelPost != null) {
      editedChannelPost = Message.fromJson(jsonEditedChannelPost);
    }
    Map<String, dynamic>? jsonInlineQuery = json['inline_query'];
    InlineQuery? inlineQuery;
    if (jsonInlineQuery != null) {
      inlineQuery = InlineQuery.fromJson(jsonInlineQuery);
    }
    Map<String, dynamic>? jsonChosenInlineResult = json['chosen_inline_result'];
    ChosenInlineResult? chosenInlineResult;
    if (jsonChosenInlineResult != null) {
      chosenInlineResult = ChosenInlineResult.fromJson(jsonChosenInlineResult);
    }
    Map<String, dynamic>? jsonCallbackQuery = json['callback_query'];
    CallbackQuery? callbackQuery;
    if (jsonCallbackQuery != null) {
      callbackQuery = CallbackQuery.fromJson(jsonCallbackQuery);
    }
    Map<String, dynamic>? jsonShippingQuery = json['shipping_query'];
    ShippingQuery? shippingQuery;
    if (jsonShippingQuery != null) {
      shippingQuery = ShippingQuery.fromJson(jsonShippingQuery);
    }
    Map<String, dynamic>? jsonPreCheckoutQuery = json['pre_checkout_query'];
    PreCheckoutQuery? preCheckoutQuery;
    if (jsonPreCheckoutQuery != null) {
      preCheckoutQuery = PreCheckoutQuery.fromJson(jsonPreCheckoutQuery);
    }
    Map<String, dynamic>? jsonPoll = json['poll'];
    Poll? poll;
    if (jsonPoll != null) {
      poll = Poll.fromJson(jsonPoll);
    }
    Map<String, dynamic>? jsonPollAnswer = json['poll_answer'];
    PollAnswer? pollAnswer;
    if (jsonPollAnswer != null) {
      pollAnswer = PollAnswer.fromJson(jsonPollAnswer);
    }
    Map<String, dynamic>? jsonMyChatMember = json['my_chat_member'];
    ChatMemberUpdated? myChatMember;
    if (jsonMyChatMember != null) {
      myChatMember = ChatMemberUpdated.fromJson(jsonMyChatMember);
    }
    Map<String, dynamic>? jsonChatMember = json['chat_member'];
    ChatMemberUpdated? chatMember;
    if (jsonChatMember != null) {
      chatMember = ChatMemberUpdated.fromJson(jsonChatMember);
    }
    Map<String, dynamic>? jsonChatJoinRequest = json['chat_join_request'];
    ChatJoinRequest? chatJoinRequest;
    if (jsonChatJoinRequest != null) {
      chatJoinRequest = ChatJoinRequest.fromJson(jsonChatJoinRequest);
    }
    return Update(
        updateId: json['update_id'],
        message: message,
        editedMessage: editedMessage,
        channelPost: channelPost,
        editedChannelPost: editedChannelPost,
        inlineQuery: inlineQuery,
        chosenInlineResult: chosenInlineResult,
        callbackQuery: callbackQuery,
        shippingQuery: shippingQuery,
        preCheckoutQuery: preCheckoutQuery,
        poll: poll,
        pollAnswer: pollAnswer,
        myChatMember: myChatMember,
        chatMember: chatMember,
        chatJoinRequest: chatJoinRequest);
  }
}
