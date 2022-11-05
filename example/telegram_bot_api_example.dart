import 'package:telegram_bot_api/telegram_bot_api.dart';

void main() async {
  final tgbot = TelegramBotApi('<bot_token>');
  final user = await tgbot.getMe();
  print("I'm @${user.username}!");
  await tgbot.setWebhook(
      url: '<webhook_url>', secretToken: '<webhook_secret_token>');
  tgbot.client.close();
}
