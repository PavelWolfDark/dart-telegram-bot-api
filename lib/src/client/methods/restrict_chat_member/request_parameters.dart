import 'dart:convert';
import '../../../models/chat_permissions.dart';
import '../../request_parameters.dart';

class RequestParametersRestrictChatMember implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;
  final ChatPermissions permissions;
  final int? untilDate;

  RequestParametersRestrictChatMember(
      {required this.chatId,
      required this.userId,
      required this.permissions,
      this.untilDate});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    json['permissions'] = permissions.toJson();
    if (untilDate != null) {
      json['until_date'] = untilDate;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    formData['permissions'] = jsonEncode(permissions.toJson());
    if (untilDate != null) {
      formData['until_date'] = untilDate.toString();
    }
    return formData;
  }
}
