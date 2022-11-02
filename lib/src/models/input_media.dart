class InputMedia {
  // InputMediaType
  final String type;
  // InputFile | String
  final Object media;

  InputMedia({required this.type, required this.media});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['type'] = type;
    json['media'] = media;
    return json;
  }
}
