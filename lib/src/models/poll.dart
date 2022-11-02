import 'poll_option.dart';
import 'message_entity.dart';

class Poll {
  final String id;
  final String question;
  final List<PollOption> options;
  final int totalVoterCount;
  final bool isClosed;
  final bool isAnonymous;
  // PollType
  final String type;
  final bool allowsMultipleAnswers;
  final int? correctOptionId;
  final String? explanation;
  final List<MessageEntity>? explanationEntities;
  final int? openPeriod;
  final int? closeDate;

  Poll(
      {required this.id,
      required this.question,
      required this.options,
      required this.totalVoterCount,
      required this.isClosed,
      required this.isAnonymous,
      required this.type,
      required this.allowsMultipleAnswers,
      this.correctOptionId,
      this.explanation,
      this.explanationEntities,
      this.openPeriod,
      this.closeDate});

  factory Poll.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonOptions = json['options'];
    List<PollOption> options = [];
    for (Map<String, dynamic> jsonOption in jsonOptions) {
      options.add(PollOption.fromJson(jsonOption));
    }
    List<dynamic>? jsonExplanationEntities = json['explanation_entities'];
    List<MessageEntity>? explanationEntities;
    if (jsonExplanationEntities != null) {
      explanationEntities = [];
      for (Map<String, dynamic> jsonExplanationEntity
          in jsonExplanationEntities) {
        explanationEntities.add(MessageEntity.fromJson(jsonExplanationEntity));
      }
    }
    return Poll(
        id: json['id'],
        question: json['question'],
        options: options,
        totalVoterCount: json['total_voter_count'],
        isClosed: json['is_closed'],
        isAnonymous: json['is_anonymous'],
        type: json['type'],
        allowsMultipleAnswers: json['allows_multiple_answers'],
        correctOptionId: json['correct_option_id'],
        explanation: json['explanation'],
        explanationEntities: explanationEntities,
        openPeriod: json['open_period'],
        closeDate: json['close_date']);
  }
}
