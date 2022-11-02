class WebAppInfo {
  final String url;

  WebAppInfo({required this.url});

  factory WebAppInfo.fromJson(Map<String, dynamic> json) =>
      WebAppInfo(url: json['url']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['url'] = url;
    return json;
  }
}
