import 'labeled_price.dart';

class ShippingOption {
  final String id;
  final String title;
  final List<LabeledPrice> prices;

  ShippingOption({required this.id, required this.title, required this.prices});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['title'] = title;
    List<Map<String, dynamic>> jsonPrices = [];
    for (final price in prices) {
      jsonPrices.add(price.toJson());
    }
    json['prices'] = jsonPrices;
    return json;
  }
}
