import '../../constants/passport_element_error_source.dart';
import '../passport_element_error.dart';

class PassportElementErrorTranslationFiles extends PassportElementError {
  final List<String> fileHashes;

  PassportElementErrorTranslationFiles(
      {
      // PassportElementErrorTranslationFileType
      required String type,
      required this.fileHashes,
      required String message})
      : super(
            source: PassportElementErrorSource.translationFiles,
            type: type,
            message: message);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['file_hashes'] = [...fileHashes];
    return json;
  }
}
