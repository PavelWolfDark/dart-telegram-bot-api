import 'shipping_address.dart';

class OrderInfo {
  final String? name;
  final String? phoneNumber;
  final String? email;
  final ShippingAddress? shippingAddress;

  OrderInfo({this.name, this.phoneNumber, this.email, this.shippingAddress});

  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonShippingAddress = json['shipping_address'];
    ShippingAddress? shippingAddress;
    if (jsonShippingAddress != null) {
      shippingAddress = ShippingAddress.fromJson(jsonShippingAddress);
    }
    return OrderInfo(
        name: json['name'],
        phoneNumber: json['phone_number'],
        email: json['email'],
        shippingAddress: shippingAddress);
  }
}
