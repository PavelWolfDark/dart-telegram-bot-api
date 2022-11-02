class EncryptedCredentials {
  final String data;
  final String hash;
  final String secret;

  EncryptedCredentials(
      {required this.data, required this.hash, required this.secret});

  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      EncryptedCredentials(
          data: json['data'], hash: json['hash'], secret: json['secret']);
}
