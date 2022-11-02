import '../../request_parameters.dart';

class RequestParametersCreateChatInviteLink implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String? name;
  final int? expireDate;
  final int? memberLimit;
  final bool? createsJoinRequest;

  RequestParametersCreateChatInviteLink(
      {required this.chatId,
      this.name,
      this.expireDate,
      this.memberLimit,
      this.createsJoinRequest});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (name != null) {
      json['name'] = name;
    }
    if (expireDate != null) {
      json['expire_date'] = expireDate;
    }
    if (memberLimit != null) {
      json['member_limit'] = memberLimit;
    }
    if (createsJoinRequest != null) {
      json['creates_join_request'] = createsJoinRequest;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    if (name != null) {
      formData['name'] = name!;
    }
    if (expireDate != null) {
      formData['expire_date'] = expireDate.toString();
    }
    if (memberLimit != null) {
      formData['member_limit'] = memberLimit.toString();
    }
    if (createsJoinRequest != null) {
      formData['creates_join_request'] = createsJoinRequest.toString();
    }
    return formData;
  }
}
