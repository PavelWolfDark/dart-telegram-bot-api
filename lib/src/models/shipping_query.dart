import 'user.dart';
import 'shipping_address.dart';

class ShippingQuery {
  final String id;
  final User from;
  final String invoicePayload;
  final ShippingAddress shippingAddress;

  ShippingQuery(
      {required this.id,
      required this.from,
      required this.invoicePayload,
      required this.shippingAddress});

  factory ShippingQuery.fromJson(Map<String, dynamic> json) {
    final from = User.fromJson(json['from']);
    final shippingAddress = ShippingAddress.fromJson(json['shipping_address']);
    return ShippingQuery(
        id: json['id'],
        from: from,
        invoicePayload: json['invoice_payload'],
        shippingAddress: shippingAddress);
  }
}
