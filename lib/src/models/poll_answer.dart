import 'user.dart';

class PollAnswer {
  final String pollId;
  final User user;
  final List<int> optionIds;

  PollAnswer(
      {required this.pollId, required this.user, required this.optionIds});

  factory PollAnswer.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    List<int> jsonOptionIds = json['option_ids'];
    final optionIds = [...jsonOptionIds];
    return PollAnswer(
        pollId: json['poll_id'], user: user, optionIds: optionIds);
  }
}
