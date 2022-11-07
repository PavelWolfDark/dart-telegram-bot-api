import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendContact extends Request {
  RequestSendContact(RequestParametersSendContact parameters)
      : super(RequestMethod.sendContact, parameters);

  factory RequestSendContact.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required String phoneNumber,
      required String firstName,
      String? lastName,
      String? vcard,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendContact(
        chatId: chatId,
        messageThreadId: messageThreadId,
        phoneNumber: phoneNumber,
        firstName: firstName,
        lastName: lastName,
        vcard: vcard,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendContact(requestParameters);
  }

  @override
  ResponseSendContact respondFromJson(Map<String, dynamic> json) =>
      ResponseSendContact.fromJson(json)..withRequest(this);
}
