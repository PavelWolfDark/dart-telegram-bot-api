import 'package:telegram_bot_api/client_api.dart';

void main() async {
  final client = Client('<bot_token>');
  final clientApi = ClientApi(client);
  final response = await clientApi.getMe();
  print("I'm @${response.result!.username}!");
  await clientApi.setWebhook(
      url: '<webhook_url>', secretToken: '<webhook_secret_token>');
  client.close();
}
