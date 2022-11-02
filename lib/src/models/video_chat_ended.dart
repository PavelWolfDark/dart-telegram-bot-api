class VideoChatEnded {
  final int duration;

  VideoChatEnded({required this.duration});

  factory VideoChatEnded.fromJson(Map<String, dynamic> json) =>
      VideoChatEnded(duration: json['duration']);
}
