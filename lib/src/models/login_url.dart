class LoginUrl {
  final String url;
  final String? forwardText;
  final String? botUsername;
  final bool? requestWriteAccess;

  LoginUrl(
      {required this.url,
      this.forwardText,
      this.botUsername,
      this.requestWriteAccess});

  factory LoginUrl.fromJson(Map<String, dynamic> json) => LoginUrl(
      url: json['url'],
      forwardText: json['forward_text'],
      botUsername: json['bot_username'],
      requestWriteAccess: json['request_write_access']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['url'] = url;
    if (forwardText != null) {
      json['forward_text'] = forwardText;
    }
    if (botUsername != null) {
      json['bot_username'] = botUsername;
    }
    if (requestWriteAccess != null) {
      json['request_write_access'] = requestWriteAccess;
    }
    return json;
  }
}
