class Contact {
  final String phoneNumber;
  final String firstName;
  final String? lastName;
  final int? userId;
  final String? vcard;

  Contact(
      {required this.phoneNumber,
      required this.firstName,
      this.lastName,
      this.userId,
      this.vcard});

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
      phoneNumber: json['phone_number'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      userId: json['user_id'],
      vcard: json['vcard']);
}
