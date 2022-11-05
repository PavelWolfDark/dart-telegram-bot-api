import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:telegram_bot_api/webhook.dart';

void main() async {
  final webhookHandler = Webhook.createHandler((update) {
    final message = update.message;
    if (message != null && message.from != null) {
      return RequestSendMessage.create(
          chatId: message.chat.id,
          text: 'Ave, @${message.from!.username ?? 'anonymous'}!');
    }
  }, secretToken: '<webhook_secret_token>');
  final server = await shelf_io.serve(webhookHandler, 'localhost', 80);
  print('Serving at http://${server.address.host}:${server.port}');
}
