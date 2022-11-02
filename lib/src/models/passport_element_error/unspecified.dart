import '../../constants/passport_element_error_source.dart';
import '../passport_element_error.dart';

class PassportElementErrorUnspecified extends PassportElementError {
  final String elementHash;

  PassportElementErrorUnspecified(
      {
      // PassportElementType
      required String type,
      required this.elementHash,
      required String message})
      : super(
            source: PassportElementErrorSource.unspecified,
            type: type,
            message: message);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['element_hash'] = elementHash;
    return json;
  }
}
