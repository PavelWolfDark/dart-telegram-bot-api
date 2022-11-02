import 'user.dart';
import 'order_info.dart';

class PreCheckoutQuery {
  final String id;
  final User from;
  final String currency;
  final int totalAmount;
  final String invoicePayload;
  final String? shippingOptionId;
  final OrderInfo? orderInfo;

  PreCheckoutQuery(
      {required this.id,
      required this.from,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo});

  factory PreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    final from = User.fromJson(json['from']);
    Map<String, dynamic>? jsonOrderInfo = json['order_info'];
    OrderInfo? orderInfo;
    if (jsonOrderInfo != null) {
      orderInfo = OrderInfo.fromJson(jsonOrderInfo);
    }
    return PreCheckoutQuery(
        id: json['id'],
        from: from,
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: orderInfo);
  }
}
