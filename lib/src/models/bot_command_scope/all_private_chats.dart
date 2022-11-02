import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeAllPrivateChats extends BotCommandScope {
  BotCommandScopeAllPrivateChats()
      : super(type: BotCommandScopeType.allPrivateChats);
}
