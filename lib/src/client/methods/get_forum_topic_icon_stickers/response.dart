import '../../../models/sticker.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetForumTopicIconStickers extends Response<List<Sticker>> {
  ResponseGetForumTopicIconStickers(
      {required bool ok,
      String? description,
      List<Sticker>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetForumTopicIconStickers.fromJson(
      Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<Sticker>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonSticker in jsonResult) {
        result.add(Sticker.fromJson(jsonSticker));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetForumTopicIconStickers(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
