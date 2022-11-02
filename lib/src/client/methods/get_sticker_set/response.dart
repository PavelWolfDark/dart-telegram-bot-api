import '../../../models/sticker_set.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetStickerSet extends Response<StickerSet> {
  ResponseGetStickerSet(
      {required bool ok,
      String? description,
      StickerSet? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetStickerSet.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    StickerSet? result;
    if (jsonResult != null) {
      result = StickerSet.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetStickerSet(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
