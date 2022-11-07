import 'dart:convert';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendPoll implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int? messageThreadId;
  final String question;
  final List<String> options;
  final bool? isAnonymous;
  // PollType
  final String? type;
  final bool? allowsMultipleAnswers;
  final int? correctOptionId;
  final String? explanation;
  // ParseMode
  final String? explanationParseMode;
  final List<MessageEntity>? explanationEntities;
  final int? openPeriod;
  final int? closeDate;
  final bool? isClosed;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  RequestParametersSendPoll(
      {required this.chatId,
      this.messageThreadId,
      required this.question,
      required this.options,
      this.isAnonymous,
      this.type,
      this.allowsMultipleAnswers,
      this.correctOptionId,
      this.explanation,
      this.explanationParseMode,
      this.explanationEntities,
      this.openPeriod,
      this.closeDate,
      this.isClosed,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (messageThreadId != null) {
      json['message_thread_id'] = messageThreadId;
    }
    json['question'] = question;
    json['options'] = [...options];
    if (isAnonymous != null) {
      json['is_anonymous'] = isAnonymous;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (allowsMultipleAnswers != null) {
      json['allows_multiple_answers'] = allowsMultipleAnswers;
    }
    if (correctOptionId != null) {
      json['correct_option_id'] = correctOptionId;
    }
    if (explanation != null) {
      json['explanation'] = explanation;
    }
    if (explanationParseMode != null) {
      json['explanation_parse_mode'] = explanationParseMode;
    }
    if (explanationEntities != null) {
      List<Map<String, dynamic>> jsonExplanationEntities = [];
      for (final entity in explanationEntities!) {
        jsonExplanationEntities.add(entity.toJson());
      }
      json['explanation_entities'] = jsonExplanationEntities;
    }
    if (openPeriod != null) {
      json['open_period'] = openPeriod;
    }
    if (closeDate != null) {
      json['close_date'] = closeDate;
    }
    if (isClosed != null) {
      json['is_closed'] = isClosed;
    }
    if (disableNotification != null) {
      json['disable_notification'] = disableNotification;
    }
    if (protectContent != null) {
      json['protect_content'] = protectContent;
    }
    if (replyToMessageId != null) {
      json['reply_to_message_id'] = replyToMessageId;
    }
    if (allowSendingWithoutReply != null) {
      json['allow_sending_without_reply'] = allowSendingWithoutReply;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    formData['question'] = question;
    formData['options'] = jsonEncode([...options]);
    if (isAnonymous != null) {
      formData['is_anonymous'] = isAnonymous.toString();
    }
    if (type != null) {
      formData['type'] = type!;
    }
    if (allowsMultipleAnswers != null) {
      formData['allows_multiple_answers'] = allowsMultipleAnswers.toString();
    }
    if (correctOptionId != null) {
      formData['correct_option_id'] = correctOptionId.toString();
    }
    if (explanation != null) {
      formData['explanation'] = explanation!;
    }
    if (explanationParseMode != null) {
      formData['explanation_parse_mode'] = explanationParseMode!;
    }
    if (explanationEntities != null) {
      List<Map<String, dynamic>> jsonExplanationEntities = [];
      for (final entity in explanationEntities!) {
        jsonExplanationEntities.add(entity.toJson());
      }
      formData['explanation_entities'] = jsonEncode(jsonExplanationEntities);
    }
    if (openPeriod != null) {
      formData['open_period'] = openPeriod.toString();
    }
    if (closeDate != null) {
      formData['close_date'] = closeDate.toString();
    }
    if (isClosed != null) {
      formData['is_closed'] = isClosed.toString();
    }
    if (disableNotification != null) {
      formData['disable_notification'] = disableNotification.toString();
    }
    if (protectContent != null) {
      formData['protect_content'] = protectContent.toString();
    }
    if (replyToMessageId != null) {
      formData['reply_to_message_id'] = replyToMessageId.toString();
    }
    if (allowSendingWithoutReply != null) {
      formData['allow_sending_without_reply'] =
          allowSendingWithoutReply.toString();
    }
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
