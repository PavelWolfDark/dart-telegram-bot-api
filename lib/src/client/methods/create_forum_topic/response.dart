import '../../../models/forum_topic.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseCreateForumTopic extends Response<ForumTopic> {
  ResponseCreateForumTopic(
      {required bool ok,
      String? description,
      ForumTopic? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseCreateForumTopic.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    ForumTopic? result;
    if (jsonResult != null) {
      result = ForumTopic.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseCreateForumTopic(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
