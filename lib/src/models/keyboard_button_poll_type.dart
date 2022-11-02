class KeyboardButtonPollType {
  // PollType
  final String? type;

  KeyboardButtonPollType({this.type});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}
