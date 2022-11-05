import '../../../constants/request_method.dart';
import '../../../models/labeled_price.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateInvoiceLink extends Request {
  RequestCreateInvoiceLink(RequestParametersCreateInvoiceLink parameters)
      : super(RequestMethod.createInvoiceLink, parameters);

  factory RequestCreateInvoiceLink.create(
      {required String title,
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
      bool? isFlexible}) {
    final requestParameters = RequestParametersCreateInvoiceLink(
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
        isFlexible: isFlexible);
    return RequestCreateInvoiceLink(requestParameters);
  }

  @override
  ResponseCreateInvoiceLink respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateInvoiceLink.fromJson(json)..withRequest(this);
}
