import '../../../constants/request_method.dart';
import '../../../models/reply_markup.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendVenue extends Request {
  RequestSendVenue(RequestParametersSendVenue parameters)
      : super(RequestMethod.sendVenue, parameters);

  factory RequestSendVenue.create(
      {
      // int | String
      required Object chatId,
      required double latitude,
      required double longitude,
      required String title,
      required String address,
      String? foursquareId,
      String? foursquareType,
      String? googlePlaceId,
      String? googlePlaceType,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup}) {
    final requestParameters = RequestParametersSendVenue(
        chatId: chatId,
        latitude: latitude,
        longitude: longitude,
        title: title,
        address: address,
        foursquareId: foursquareId,
        foursquareType: foursquareType,
        googlePlaceId: googlePlaceId,
        googlePlaceType: googlePlaceType,
        disableNotification: disableNotification,
        protectContent: protectContent,
        replyToMessageId: replyToMessageId,
        allowSendingWithoutReply: allowSendingWithoutReply,
        replyMarkup: replyMarkup);
    return RequestSendVenue(requestParameters);
  }

  @override
  ResponseSendVenue respondFromJson(Map<String, dynamic> json) =>
      ResponseSendVenue.fromJson(json)..withRequest(this);
}
