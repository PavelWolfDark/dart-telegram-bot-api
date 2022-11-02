class InlineQueryResult {
  // InlineQueryResultType
  final String type;
  final String id;

  InlineQueryResult({required this.type, required this.id});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['type'] = type;
    json['id'] = id;
    return json;
  }
}
