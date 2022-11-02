class PollOption {
  final String text;
  final int voterCount;

  PollOption({required this.text, required this.voterCount});

  factory PollOption.fromJson(Map<String, dynamic> json) =>
      PollOption(text: json['text'], voterCount: json['voter_count']);
}
