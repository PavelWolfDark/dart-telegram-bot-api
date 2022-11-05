import '../../../constants/request_method.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageLiveLocation extends Request {
  RequestEditMessageLiveLocation(
      RequestParametersEditMessageLiveLocation parameters)
      : super(RequestMethod.editMessageLiveLocation);

  factory RequestEditMessageLiveLocation.create(
      {
      // int | String
      Object? chatId,
      int? messageId,
      String? inlineMessageId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? heading,
      int? proximityAlertRadius,
      InlineKeyboardMarkup? replyMarkup}) {
    final requestParameters = RequestParametersEditMessageLiveLocation(
        chatId: chatId,
        messageId: messageId,
        inlineMessageId: inlineMessageId,
        latitude: latitude,
        longitude: longitude,
        horizontalAccuracy: horizontalAccuracy,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        replyMarkup: replyMarkup);
    return RequestEditMessageLiveLocation(requestParameters);
  }

  @override
  ResponseEditMessageLiveLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageLiveLocation.fromJson(json)..withRequest(this);
}
