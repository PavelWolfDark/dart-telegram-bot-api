class LabeledPrice {
  final String label;
  final int amount;

  LabeledPrice({required this.label, required this.amount});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['label'] = label;
    json['amount'] = amount;
    return json;
  }
}
