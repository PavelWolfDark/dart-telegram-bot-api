import '../../../models/file.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseUploadStickerFile extends Response<File> {
  ResponseUploadStickerFile(
      {required bool ok,
      String? description,
      File? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseUploadStickerFile.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    File? result;
    if (jsonResult != null) {
      result = File.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseUploadStickerFile(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
