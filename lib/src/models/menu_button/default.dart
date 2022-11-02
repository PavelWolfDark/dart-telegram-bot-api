import '../../constants/menu_button_type.dart';
import '../menu_button.dart';

class MenuButtonDefault extends MenuButton {
  MenuButtonDefault() : super(type: MenuButtonType.default_);

  factory MenuButtonDefault.fromJson(Map<String, dynamic> json) =>
      MenuButtonDefault();
}
