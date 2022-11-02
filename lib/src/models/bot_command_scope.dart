class BotCommandScope {
  // BotCommandScopeType
  final String type;

  BotCommandScope({required this.type});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['type'] = type;
    return json;
  }
}
