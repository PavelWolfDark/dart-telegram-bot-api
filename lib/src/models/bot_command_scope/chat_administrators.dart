import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeChatAdministrators extends BotCommandScope {
  // int | String
  final Object chatId;

  BotCommandScopeChatAdministrators({required this.chatId})
      : super(type: BotCommandScopeType.chatAdministrators);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['chat_id'] = chatId;
    return json;
  }
}
