import '../input_message_content.dart';

class InputContactMessageContent implements InputMessageContent {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final String? vcard;

  InputContactMessageContent(
      {required this.phoneNumber,
      required this.firstName,
      this.lastName,
      this.vcard});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['phone_number'] = phoneNumber;
    json['first_name'] = firstName;
    if (lastName != null) {
      json['last_name'] = lastName;
    }
    if (vcard != null) {
      json['vcard'] = vcard;
    }
    return json;
  }
}
