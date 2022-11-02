import '../../constants/passport_element_error_source.dart';
import '../passport_element_error.dart';

class PassportElementErrorSelfie extends PassportElementError {
  final String fileHash;

  PassportElementErrorSelfie(
      {
      // PassportElementErrorSelfieType
      required String type,
      required this.fileHash,
      required String message})
      : super(
            source: PassportElementErrorSource.selfie,
            type: type,
            message: message);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['file_hash'] = fileHash;
    return json;
  }
}
