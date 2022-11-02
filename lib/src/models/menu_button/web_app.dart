import '../../constants/menu_button_type.dart';
import '../menu_button.dart';
import '../web_app_info.dart';

class MenuButtonWebApp extends MenuButton {
  late String text;
  late WebAppInfo webApp;

  MenuButtonWebApp({required this.text, required this.webApp})
      : super(type: MenuButtonType.webApp);

  factory MenuButtonWebApp.fromJson(Map<String, dynamic> json) {
    final webApp = WebAppInfo.fromJson(json['web_app']);
    return MenuButtonWebApp(text: json['text'], webApp: webApp);
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['text'] = text;
    json['web_app'] = webApp.toJson();
    return json;
  }
}
