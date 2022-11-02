import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetUserProfilePhotos extends Request {
  RequestGetUserProfilePhotos(RequestParametersGetUserProfilePhotos parameters)
      : super(RequestMethod.getUserProfilePhotos, parameters);

  @override
  ResponseGetUserProfilePhotos respondFromJson(Map<String, dynamic> json) =>
      ResponseGetUserProfilePhotos.fromJson(json)..withRequest(this);
}
