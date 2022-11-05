import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetCustomEmojiStickers extends Request {
  RequestGetCustomEmojiStickers(
      RequestParametersGetCustomEmojiStickers parameters)
      : super(RequestMethod.getCustomEmojiStickers, parameters);

  factory RequestGetCustomEmojiStickers.create(
      {required List<String> customEmojiIds}) {
    final requestParameters =
        RequestParametersGetCustomEmojiStickers(customEmojiIds: customEmojiIds);
    return RequestGetCustomEmojiStickers(requestParameters);
  }

  @override
  ResponseGetCustomEmojiStickers respondFromJson(Map<String, dynamic> json) =>
      ResponseGetCustomEmojiStickers.fromJson(json)..withRequest(this);
}
