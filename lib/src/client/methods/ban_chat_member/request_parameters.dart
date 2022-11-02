import '../../request_parameters.dart';

class RequestParametersBanChatMember implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;
  final int? untilDate;
  final bool? revokeMessages;

  RequestParametersBanChatMember(
      {required this.chatId,
      required this.userId,
      this.untilDate,
      this.revokeMessages});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    if (untilDate != null) {
      json['until_date'] = untilDate;
    }
    if (revokeMessages != null) {
      json['revoke_messages'] = revokeMessages;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    if (untilDate != null) {
      formData['until_date'] = untilDate.toString();
    }
    if (revokeMessages != null) {
      formData['revoke_messages'] = revokeMessages.toString();
    }
    return formData;
  }
}
