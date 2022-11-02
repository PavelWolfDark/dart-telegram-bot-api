import 'order_info.dart';

class SuccessfulPayment {
  final String currency;
  final int totalAmount;
  final String invoicePayload;
  final String? shippingOptionId;
  final OrderInfo? orderInfo;
  final String telegramPaymentChargeId;
  final String providerPaymentChargeId;

  SuccessfulPayment(
      {required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo,
      required this.telegramPaymentChargeId,
      required this.providerPaymentChargeId});

  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonOrderInfo = json['order_info'];
    OrderInfo? orderInfo;
    if (jsonOrderInfo != null) {
      orderInfo = OrderInfo.fromJson(jsonOrderInfo);
    }
    return SuccessfulPayment(
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: orderInfo,
        telegramPaymentChargeId: json['telegram_payment_charge_id'],
        providerPaymentChargeId: json['provider_payment_charge_id']);
  }
}
