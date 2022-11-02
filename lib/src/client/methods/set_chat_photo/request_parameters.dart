import '../../../models/input_file.dart';
import '../../request_parameters.dart';

class RequestParametersSetChatPhoto implements RequestParameters {
  @override
  final hasInputFiles = true;
  // int | String
  final Object chatId;
  final InputFile photo;

  RequestParametersSetChatPhoto({required this.chatId, required this.photo});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['photo'] = photo;
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['photo'] = photo;
    return formData;
  }
}
