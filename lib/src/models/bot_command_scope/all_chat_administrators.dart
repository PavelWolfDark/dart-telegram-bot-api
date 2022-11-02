import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  BotCommandScopeAllChatAdministrators()
      : super(type: BotCommandScopeType.allChatAdministrators);
}
