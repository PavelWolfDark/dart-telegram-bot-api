import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendLocation extends Request {
  RequestSendLocation(RequestParametersSendLocation parameters)
      : super(RequestMethod.sendLocation, parameters);

  factory RequestSendLocation.create(
      {
      // int | String
      required Object chatId,
      int? messageThreadId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? livePeriod,
      int? heading,
      int? proximityAlertRadius,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendLocation(
        chatId: chatId,
        messageThreadId: messageThreadId,
        latitude: latitude,
        longitude: longitude,
        horizontalAccuracy: horizontalAccuracy,
        livePeriod: livePeriod,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendLocation(requestParameters);
  }

  @override
  ResponseSendLocation respondFromJson(Map<String, dynamic> json) =>
      ResponseSendLocation.fromJson(json)..withRequest(this);
}
