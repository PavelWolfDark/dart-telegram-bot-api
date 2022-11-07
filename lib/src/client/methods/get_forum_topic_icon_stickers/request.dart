import '../../../constants/request_method.dart';
import '../../request.dart';
import 'response.dart';

class RequestGetForumTopicIconStickers extends Request {
  RequestGetForumTopicIconStickers()
      : super(RequestMethod.getForumTopicIconStickers);

  @override
  ResponseGetForumTopicIconStickers respondFromJson(
          Map<String, dynamic> json) =>
      ResponseGetForumTopicIconStickers.fromJson(json)..withRequest(this);
}
