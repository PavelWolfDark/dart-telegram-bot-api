import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetUserProfilePhotos extends Request {
  RequestGetUserProfilePhotos(RequestParametersGetUserProfilePhotos parameters)
      : super(RequestMethod.getUserProfilePhotos, parameters);

  factory RequestGetUserProfilePhotos.create(
      {required int userId, int? offset, int? limit}) {
    final requestParameters = RequestParametersGetUserProfilePhotos(
        userId: userId, offset: offset, limit: limit);
    return RequestGetUserProfilePhotos(requestParameters);
  }

  @override
  ResponseGetUserProfilePhotos respondFromJson(Map<String, dynamic> json) =>
      ResponseGetUserProfilePhotos.fromJson(json)..withRequest(this);
}
