import 'passport_file.dart';

class EncryptedPassportElement {
  // PassportElementType
  final String type;
  final String? data;
  final String? phoneNumber;
  final String? email;
  final List<PassportFile>? files;
  final PassportFile? frontSide;
  final PassportFile? reverseSide;
  final PassportFile? selfie;
  final List<PassportFile>? translation;
  final String hash;

  EncryptedPassportElement(
      {required this.type,
      this.data,
      this.phoneNumber,
      this.email,
      this.files,
      this.frontSide,
      this.reverseSide,
      this.selfie,
      this.translation,
      required this.hash});

  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonFiles = json['files'];
    List<PassportFile>? files;
    if (jsonFiles != null) {
      files = [];
      for (Map<String, dynamic> jsonFile in jsonFiles) {
        files.add(PassportFile.fromJson(jsonFile));
      }
    }
    Map<String, dynamic>? jsonFrontSide = json['front_side'];
    PassportFile? frontSide;
    if (jsonFrontSide != null) {
      frontSide = PassportFile.fromJson(jsonFrontSide);
    }
    Map<String, dynamic>? jsonReverseSide = json['reverse_side'];
    PassportFile? reverseSide;
    if (jsonReverseSide != null) {
      reverseSide = PassportFile.fromJson(jsonReverseSide);
    }
    Map<String, dynamic>? jsonSelfie = json['selfie'];
    PassportFile? selfie;
    if (jsonSelfie != null) {
      selfie = PassportFile.fromJson(jsonSelfie);
    }
    List<dynamic>? jsonTranslation = json['translation'];
    List<PassportFile>? translation;
    if (jsonTranslation != null) {
      translation = [];
      for (Map<String, dynamic> jsonFile in jsonTranslation) {
        translation.add(PassportFile.fromJson(jsonFile));
      }
    }
    return EncryptedPassportElement(
        type: json['type'],
        data: json['data'],
        phoneNumber: json['phone_number'],
        email: json['email'],
        files: files,
        frontSide: frontSide,
        reverseSide: reverseSide,
        selfie: selfie,
        translation: translation,
        hash: json['hash']);
  }
}
