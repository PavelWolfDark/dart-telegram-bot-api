import '../input_message_content.dart';
import '../labeled_price.dart';

class InputInvoiceMessageContent implements InputMessageContent {
  final String title;
  final String description;
  final String payload;
  final String providerToken;
  final String currency;
  final List<LabeledPrice> prices;
  final int? maxTipAmount;
  final List<int>? suggestedTipAmounts;
  final String? providerData;
  final String? photoUrl;
  final int? photoSize;
  final int? photoWidth;
  final int? photoHeight;
  final bool? needName;
  final bool? needPhoneNumber;
  final bool? needEmail;
  final bool? needShippingAddress;
  final bool? sendPhoneNumberToProvider;
  final bool? sendEmailToProvider;
  final bool? isFlexible;

  InputInvoiceMessageContent(
      {required this.title,
      required this.description,
      required this.payload,
      required this.providerToken,
      required this.currency,
      required this.prices,
      this.maxTipAmount,
      this.suggestedTipAmounts,
      this.providerData,
      this.photoUrl,
      this.photoSize,
      this.photoWidth,
      this.photoHeight,
      this.needName,
      this.needPhoneNumber,
      this.needEmail,
      this.needShippingAddress,
      this.sendPhoneNumberToProvider,
      this.sendEmailToProvider,
      this.isFlexible});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['title'] = title;
    json['description'] = description;
    json['payload'] = payload;
    json['provider_token'] = providerToken;
    json['currency'] = currency;
    List<Map<String, dynamic>> jsonPrices = [];
    for (final price in prices) {
      jsonPrices.add(price.toJson());
    }
    json['prices'] = jsonPrices;
    if (maxTipAmount != null) {
      json['max_tip_amount'] = maxTipAmount;
    }
    if (suggestedTipAmounts != null) {
      json['suggested_tip_amounts'] = [...suggestedTipAmounts!];
    }
    if (providerData != null) {
      json['provider_data'] = providerData;
    }
    if (photoUrl != null) {
      json['photo_url'] = photoUrl;
    }
    if (photoSize != null) {
      json['photo_size'] = photoSize;
    }
    if (photoWidth != null) {
      json['photo_width'] = photoWidth;
    }
    if (photoHeight != null) {
      json['photo_height'] = photoHeight;
    }
    if (needName != null) {
      json['need_name'] = needName;
    }
    if (needPhoneNumber != null) {
      json['need_phone_number'] = needPhoneNumber;
    }
    if (needEmail != null) {
      json['need_email'] = needEmail;
    }
    if (needShippingAddress != null) {
      json['need_shipping_address'] = needShippingAddress;
    }
    if (sendPhoneNumberToProvider != null) {
      json['send_phone_number_to_provider'] = sendPhoneNumberToProvider;
    }
    if (sendEmailToProvider != null) {
      json['send_email_to_provider'] = sendEmailToProvider;
    }
    if (isFlexible != null) {
      json['is_flexible'] = isFlexible;
    }
    return json;
  }
}
