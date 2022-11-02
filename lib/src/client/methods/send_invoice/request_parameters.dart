import 'dart:convert';
import '../../../models/labeled_price.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendInvoice implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
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
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final InlineKeyboardMarkup? replyMarkup;

  RequestParametersSendInvoice(
      {required this.chatId,
      required this.title,
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
      this.isFlexible,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
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
    if (disableNotification != null) {
      json['disable_notification'] = disableNotification;
    }
    if (protectContent != null) {
      json['protect_content'] = protectContent;
    }
    if (replyToMessageId != null) {
      json['reply_to_message_id'] = replyToMessageId;
    }
    if (allowSendingWithoutReply != null) {
      json['allow_sending_without_reply'] = allowSendingWithoutReply;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['title'] = title;
    formData['description'] = description;
    formData['payload'] = payload;
    formData['provider_token'] = providerToken;
    formData['currency'] = currency;
    List<Map<String, dynamic>> jsonPrices = [];
    for (final price in prices) {
      jsonPrices.add(price.toJson());
    }
    formData['prices'] = jsonEncode(jsonPrices);
    if (maxTipAmount != null) {
      formData['max_tip_amount'] = maxTipAmount.toString();
    }
    if (suggestedTipAmounts != null) {
      formData['suggested_tip_amounts'] = jsonEncode([...suggestedTipAmounts!]);
    }
    if (providerData != null) {
      formData['provider_data'] = providerData!;
    }
    if (photoUrl != null) {
      formData['photo_url'] = photoUrl!;
    }
    if (photoSize != null) {
      formData['photo_size'] = photoSize.toString();
    }
    if (photoWidth != null) {
      formData['photo_width'] = photoWidth.toString();
    }
    if (photoHeight != null) {
      formData['photo_height'] = photoHeight.toString();
    }
    if (needName != null) {
      formData['need_name'] = needName.toString();
    }
    if (needPhoneNumber != null) {
      formData['need_phone_number'] = needPhoneNumber.toString();
    }
    if (needEmail != null) {
      formData['need_email'] = needEmail.toString();
    }
    if (needShippingAddress != null) {
      formData['need_shipping_address'] = needShippingAddress.toString();
    }
    if (sendPhoneNumberToProvider != null) {
      formData['send_phone_number_to_provider'] =
          sendPhoneNumberToProvider.toString();
    }
    if (sendEmailToProvider != null) {
      formData['send_email_to_provider'] = sendEmailToProvider.toString();
    }
    if (isFlexible != null) {
      formData['is_flexible'] = isFlexible.toString();
    }
    if (disableNotification != null) {
      formData['disable_notification'] = disableNotification.toString();
    }
    if (protectContent != null) {
      formData['protect_content'] = protectContent.toString();
    }
    if (replyToMessageId != null) {
      formData['reply_to_message_id'] = replyToMessageId.toString();
    }
    if (allowSendingWithoutReply != null) {
      formData['allow_sending_without_reply'] =
          allowSendingWithoutReply.toString();
    }
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
