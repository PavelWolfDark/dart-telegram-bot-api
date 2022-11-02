import '../../request_parameters.dart';

class RequestParametersGetUserProfilePhotos implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int userId;
  final int? offset;
  final int? limit;

  RequestParametersGetUserProfilePhotos(
      {required this.userId, this.offset, this.limit});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = userId;
    if (offset != null) {
      json['offset'] = offset;
    }
    if (limit != null) {
      json['limit'] = limit;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['user_id'] = userId.toString();
    if (offset != null) {
      formData['offset'] = offset.toString();
    }
    if (limit != null) {
      formData['limit'] = limit.toString();
    }
    return formData;
  }
}
