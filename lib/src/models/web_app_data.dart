class WebAppData {
  final String data;
  final String buttonText;

  WebAppData({required this.data, required this.buttonText});

  factory WebAppData.fromJson(Map<String, dynamic> json) =>
      WebAppData(data: json['data'], buttonText: json['button_text']);
}
