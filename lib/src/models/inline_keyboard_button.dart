import 'web_app_info.dart';
import 'login_url.dart';
import 'callback_game.dart';

class InlineKeyboardButton {
  final String text;
  final String? url;
  final String? callbackData;
  final WebAppInfo? webApp;
  final LoginUrl? loginUrl;
  final String? switchInlineQuery;
  final String? switchInlineQueryCurrentChat;
  final CallbackGame? callbackGame;
  final bool? pay;

  InlineKeyboardButton(
      {required this.text,
      this.url,
      this.callbackData,
      this.webApp,
      this.loginUrl,
      this.switchInlineQuery,
      this.switchInlineQueryCurrentChat,
      this.callbackGame,
      this.pay});

  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonWebApp = json['web_app'];
    WebAppInfo? webApp;
    if (jsonWebApp != null) {
      webApp = WebAppInfo.fromJson(jsonWebApp);
    }
    Map<String, dynamic>? jsonLoginUrl = json['login_url'];
    LoginUrl? loginUrl;
    if (jsonLoginUrl != null) {
      loginUrl = LoginUrl.fromJson(jsonLoginUrl);
    }
    Map<String, dynamic>? jsonCallbackGame = json['callback_game'];
    CallbackGame? callbackGame;
    if (jsonCallbackGame != null) {
      callbackGame = CallbackGame.fromJson(jsonCallbackGame);
    }
    return InlineKeyboardButton(
        text: json['text'],
        url: json['url'],
        callbackData: json['callback_data'],
        webApp: webApp,
        loginUrl: loginUrl,
        switchInlineQuery: json['switch_inline_query'],
        switchInlineQueryCurrentChat: json['switch_inline_query_current_chat'],
        callbackGame: callbackGame,
        pay: json['pay']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['text'] = text;
    if (url != null) {
      json['url'] = url;
    }
    if (callbackData != null) {
      json['callback_data'] = callbackData;
    }
    if (webApp != null) {
      json['web_app'] = webApp!.toJson();
    }
    if (loginUrl != null) {
      json['login_url'] = loginUrl!.toJson();
    }
    if (switchInlineQuery != null) {
      json['switch_inline_query'] = switchInlineQuery;
    }
    if (switchInlineQueryCurrentChat != null) {
      json['switch_inline_query_current_chat'] = switchInlineQueryCurrentChat;
    }
    if (callbackGame != null) {
      json['callback_game'] = callbackGame!.toJson();
    }
    if (pay != null) {
      json['pay'] = pay;
    }
    return json;
  }
}
