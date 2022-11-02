import '../../../models/game_high_score.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetGameHighScores extends Response<List<GameHighScore>> {
  ResponseGetGameHighScores(
      {required bool ok,
      String? description,
      List<GameHighScore>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetGameHighScores.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<GameHighScore>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonGameHighScore in jsonResult) {
        result.add(GameHighScore.fromJson(jsonGameHighScore));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetGameHighScores(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
