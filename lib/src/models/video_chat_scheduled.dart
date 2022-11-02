class VideoChatScheduled {
  final int startDate;

  VideoChatScheduled({required this.startDate});

  factory VideoChatScheduled.fromJson(Map<String, dynamic> json) =>
      VideoChatScheduled(startDate: json['start_date']);
}
