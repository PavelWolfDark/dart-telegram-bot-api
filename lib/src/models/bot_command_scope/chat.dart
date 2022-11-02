import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeChat extends BotCommandScope {
  // int | String
  final Object chatId;

  BotCommandScopeChat({required this.chatId})
      : super(type: BotCommandScopeType.chat);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['chat_id'] = chatId;
    return json;
  }
}
