import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeAllGroupChats extends BotCommandScope {
  BotCommandScopeAllGroupChats()
      : super(type: BotCommandScopeType.allGroupChats);
}
