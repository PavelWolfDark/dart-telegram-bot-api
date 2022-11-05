import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../../models/labeled_price.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendInvoice extends Request {
  RequestSendInvoice(RequestParametersSendInvoice parameters)
      : super(RequestMethod.sendInvoice, parameters);

  factory RequestSendInvoice.create(
      {
      // int | String
      required Object chatId,
      required String title,
      required String description,
      required String payload,
      required String providerToken,
      required String currency,
      required List<LabeledPrice> prices,
      int? maxTipAmount,
      List<int>? suggestedTipAmounts,
      String? providerData,
      String? photoUrl,
      int? photoSize,
      int? photoWidth,
      int? photoHeight,
      bool? needName,
      bool? needPhoneNumber,
      bool? needEmail,
      bool? needShippingAddress,
      bool? sendPhoneNumberToProvider,
      bool? sendEmailToProvider,
      bool? isFlexible,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendInvoice(
        chatId: chatId,
        title: title,
        description: description,
        payload: payload,
        providerToken: providerToken,
        currency: currency,
        prices: prices,
        maxTipAmount: maxTipAmount,
        suggestedTipAmounts: suggestedTipAmounts,
        providerData: providerData,
        photoUrl: photoUrl,
        photoSize: photoSize,
        photoWidth: photoWidth,
        photoHeight: photoHeight,
        needName: needName,
        needPhoneNumber: needPhoneNumber,
        needEmail: needEmail,
        needShippingAddress: needShippingAddress,
        sendPhoneNumberToProvider: sendPhoneNumberToProvider,
        sendEmailToProvider: sendEmailToProvider,
        isFlexible: isFlexible,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendInvoice(requestParameters);
  }

  @override
  ResponseSendInvoice respondFromJson(Map<String, dynamic> json) =>
      ResponseSendInvoice.fromJson(json)..withRequest(this);
}
