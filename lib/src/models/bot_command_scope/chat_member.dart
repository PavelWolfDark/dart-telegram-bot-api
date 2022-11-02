import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeChatMember extends BotCommandScope {
  // int | String
  final Object chatId;
  final int userId;

  BotCommandScopeChatMember({required this.chatId, required this.userId})
      : super(type: BotCommandScopeType.chatMember);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    return json;
  }
}
