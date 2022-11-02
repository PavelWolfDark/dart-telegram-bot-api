import 'keyboard_button_poll_type.dart';
import 'web_app_info.dart';

class KeyboardButton {
  final String text;
  final bool? requestContact;
  final bool? requestLocation;
  final KeyboardButtonPollType? requestPoll;
  final WebAppInfo? webApp;

  KeyboardButton({
    required this.text,
    this.requestContact,
    this.requestLocation,
    this.requestPoll,
    this.webApp
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['text'] = text;
    if (requestContact != null) {
      json['request_contact'] = requestContact;
    }
    if (requestLocation != null) {
      json['request_location'] = requestLocation;
    }
    if (requestPoll != null) {
      json['request_poll'] = requestPoll!.toJson();
    }
    if (webApp != null) {
      json['web_app'] = webApp!.toJson();
    }
    return json;
  }
}