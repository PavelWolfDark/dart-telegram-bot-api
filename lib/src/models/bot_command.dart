class BotCommand {
  final String command;
  final String description;

  BotCommand({required this.command, required this.description});

  factory BotCommand.fromJson(Map<String, dynamic> json) =>
      BotCommand(command: json['command'], description: json['description']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['command'] = command;
    json['description'] = description;
    return json;
  }
}
