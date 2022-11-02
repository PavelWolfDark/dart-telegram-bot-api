class ResponseParameters {
  final int? migrateToChatId;
  final int? retryAfter;

  ResponseParameters({this.migrateToChatId, this.retryAfter});

  factory ResponseParameters.fromJson(Map<String, dynamic> json) =>
      ResponseParameters(
          migrateToChatId: json['migrate_to_chat_id'],
          retryAfter: json['retryAfter']);
}
