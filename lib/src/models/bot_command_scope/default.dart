import '../../constants/bot_command_scope_type.dart';
import '../bot_command_scope.dart';

class BotCommandScopeDefault extends BotCommandScope {
  BotCommandScopeDefault() : super(type: BotCommandScopeType.default_);
}
