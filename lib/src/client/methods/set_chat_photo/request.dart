import '../../../constants/request_method.dart';
import '../../../models/input_file.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatPhoto extends Request {
  RequestSetChatPhoto(RequestParametersSetChatPhoto parameters)
      : super(RequestMethod.setChatPhoto, parameters);

  factory RequestSetChatPhoto.create(
      {
      // int | String
      required Object chatId,
      required InputFile photo}) {
    final requestParameters =
        RequestParametersSetChatPhoto(chatId: chatId, photo: photo);
    return RequestSetChatPhoto(requestParameters);
  }

  @override
  ResponseSetChatPhoto respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatPhoto.fromJson(json)..withRequest(this);
}
