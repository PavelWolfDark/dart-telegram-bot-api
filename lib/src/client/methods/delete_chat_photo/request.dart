import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteChatPhoto extends Request {
  RequestDeleteChatPhoto(RequestParametersDeleteChatPhoto parameters)
      : super(RequestMethod.deleteChatPhoto, parameters);

  factory RequestDeleteChatPhoto.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersDeleteChatPhoto(chatId: chatId);
    return RequestDeleteChatPhoto(requestParameters);
  }

  @override
  ResponseDeleteChatPhoto respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteChatPhoto.fromJson(json)..withRequest(this);
}
