import '../../constants/passport_element_error_source.dart';
import '../passport_element_error.dart';

class PassportElementErrorFrontSide extends PassportElementError {
  final String fileHash;

  PassportElementErrorFrontSide(
      {
      // PassportElementErrorFrontSideType
      required String type,
      required this.fileHash,
      required String message})
      : super(
            source: PassportElementErrorSource.frontSide,
            type: type,
            message: message);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['file_hash'] = fileHash;
    return json;
  }
}
