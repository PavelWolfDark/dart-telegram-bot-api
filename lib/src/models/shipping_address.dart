class ShippingAddress {
  final String countryCode;
  final String state;
  final String city;
  final String streetLine1;
  final String streetLine2;
  final String postCode;

  ShippingAddress(
      {required this.countryCode,
      required this.state,
      required this.city,
      required this.streetLine1,
      required this.streetLine2,
      required this.postCode});

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      ShippingAddress(
          countryCode: json['country_code'],
          state: json['state'],
          city: json['city'],
          streetLine1: json['street_line1'],
          streetLine2: json['street_line2'],
          postCode: json['post_code']);
}
