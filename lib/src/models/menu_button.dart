import '../constants/menu_button_type.dart';
import 'menu_button/default.dart';
import 'menu_button/commands.dart';
import 'menu_button/web_app.dart';

class MenuButton {
  // MenuButtonType
  final String type;

  MenuButton({required this.type});

  factory MenuButton.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case MenuButtonType.default_:
        return MenuButtonDefault.fromJson(json);
      case MenuButtonType.commands:
        return MenuButtonCommands.fromJson(json);
      case MenuButtonType.webApp:
        return MenuButtonWebApp.fromJson(json);
      default:
        throw TypeError();
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['type'] = type;
    return json;
  }
}
