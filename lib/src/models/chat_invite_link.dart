import 'user.dart';

class ChatInviteLink {
  final String inviteLink;
  final User creator;
  final bool createsJoinRequest;
  final bool isPrimary;
  final bool isRevoked;
  final String? name;
  final int? expireDate;
  final int? memberLimit;
  final int? pendingJoinRequestCount;

  ChatInviteLink(
      {required this.inviteLink,
      required this.creator,
      required this.createsJoinRequest,
      required this.isPrimary,
      required this.isRevoked,
      this.name,
      this.expireDate,
      this.memberLimit,
      this.pendingJoinRequestCount});

  factory ChatInviteLink.fromJson(Map<String, dynamic> json) {
    final creator = User.fromJson(json['creator']);
    return ChatInviteLink(
        inviteLink: json['invite_link'],
        creator: creator,
        createsJoinRequest: json['creates_join_request'],
        isPrimary: json['is_primary'],
        isRevoked: json['is_revoked'],
        name: json['name'],
        expireDate: json['expire_date'],
        memberLimit: json['member_limit'],
        pendingJoinRequestCount: json['pending_join_request_count']);
  }
}
