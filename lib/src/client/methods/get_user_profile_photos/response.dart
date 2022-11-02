import '../../../models/user_profile_photos.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetUserProfilePhotos extends Response<UserProfilePhotos> {
  ResponseGetUserProfilePhotos(
      {required bool ok,
      String? description,
      UserProfilePhotos? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetUserProfilePhotos.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    UserProfilePhotos? result;
    if (jsonResult != null) {
      result = UserProfilePhotos.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetUserProfilePhotos(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
