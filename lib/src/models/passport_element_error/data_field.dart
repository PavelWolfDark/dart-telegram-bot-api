import '../../constants/passport_element_error_source.dart';
import '../passport_element_error.dart';

class PassportElementErrorDataField extends PassportElementError {
  final String fieldName;
  final String dataHash;

  PassportElementErrorDataField(
      {
      // PassportElementErrorDataFieldType
      required String type,
      required this.fieldName,
      required this.dataHash,
      required String message})
      : super(
            source: PassportElementErrorSource.data,
            type: type,
            message: message);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['field_name'] = fieldName;
    json['data_hash'] = dataHash;
    return json;
  }
}
