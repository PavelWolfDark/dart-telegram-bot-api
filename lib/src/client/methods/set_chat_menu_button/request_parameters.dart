import 'dart:convert';
import '../../../models/menu_button.dart';
import '../../request_parameters.dart';

class RequestParametersSetChatMenuButton implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int? chatId;
  final MenuButton? menuButton;

  RequestParametersSetChatMenuButton({this.chatId, this.menuButton});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (chatId != null) {
      json['chat_id'] = chatId;
    }
    if (menuButton != null) {
      json['menu_button'] = menuButton!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    if (menuButton != null) {
      formData['menu_button'] = jsonEncode(menuButton!.toJson());
    }
    return formData;
  }
}
