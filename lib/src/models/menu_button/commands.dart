import '../../constants/menu_button_type.dart';
import '../menu_button.dart';

class MenuButtonCommands extends MenuButton {
  MenuButtonCommands() : super(type: MenuButtonType.commands);

  factory MenuButtonCommands.fromJson(Map<String, dynamic> json) =>
      MenuButtonCommands();
}
