import 'dart:async';
import 'dart:convert';
import 'package:shelf/shelf.dart' as shelf;
import 'client/request.dart';
import 'models/update.dart';

class Webhook {
  static shelf.Handler createHandler(
          FutureOr<Request?> Function(Update update) handler,
          {String? secretToken}) =>
      (shelf.Request request) async {
        if (secretToken != null &&
            request.headers['x-telegram-bot-api-secret-token'] != secretToken) {
          return shelf.Response.forbidden(null);
        }
        final jsonText = await request.readAsString();
        final json = jsonDecode(jsonText);
        final update = Update.fromJson(json);
        final responseRequest = await handler(update);
        if (responseRequest == null) {
          return shelf.Response.ok(null);
        }
        if (responseRequest.hasInputFiles) {
          throw UnsupportedError(
              "Responding to webhook with a request containing an InputFile's is not supported.");
        }
        final jsonResponse = responseRequest.toJson();
        final jsonTextResponse = jsonEncode(jsonResponse);
        return shelf.Response.ok(jsonTextResponse,
            headers: {'content-type': 'application/json'});
      };
}
