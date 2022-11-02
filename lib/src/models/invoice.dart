class Invoice {
  final String title;
  final String description;
  final String startParameter;
  final String currency;
  final int totalAmount;

  Invoice(
      {required this.title,
      required this.description,
      required this.startParameter,
      required this.currency,
      required this.totalAmount});

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
      title: json['title'],
      description: json['description'],
      startParameter: json['start_parameter'],
      currency: json['currency'],
      totalAmount: json['total_amount']);
}
