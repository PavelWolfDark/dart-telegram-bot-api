import 'dart:convert';
import '../../../models/chat_permissions.dart';
import '../../request_parameters.dart';

class RequestParametersSetChatPermissions implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final ChatPermissions permissions;

  RequestParametersSetChatPermissions(
      {required this.chatId, required this.permissions});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['permissions'] = permissions.toJson();
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['permissions'] = jsonEncode(permissions.toJson());
    return formData;
  }
}
