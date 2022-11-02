import 'encrypted_passport_element.dart';
import 'encrypted_credentials.dart';

class PassportData {
  final List<EncryptedPassportElement> data;
  final EncryptedCredentials credentials;

  PassportData({required this.data, required this.credentials});

  factory PassportData.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonData = json['data'];
    List<EncryptedPassportElement> data = [];
    for (Map<String, dynamic> jsonElement in jsonData) {
      data.add(EncryptedPassportElement.fromJson(jsonElement));
    }
    final credentials = EncryptedCredentials.fromJson(json['credentials']);
    return PassportData(data: data, credentials: credentials);
  }
}
