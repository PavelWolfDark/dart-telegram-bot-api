class PassportElementError {
  // PassportElementErrorSource
  final String source;
  // PassportElementType
  final String type;
  final String message;

  PassportElementError(
      {required this.source, required this.type, required this.message});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['source'] = source;
    json['type'] = type;
    json['message'] = message;
    return json;
  }
}
