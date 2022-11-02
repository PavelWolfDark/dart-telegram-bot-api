import 'user.dart';

class VideoChatParticipantsInvited {
  final List<User> users;

  VideoChatParticipantsInvited({required this.users});

  factory VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonUsers = json['users'];
    List<User> users = [];
    for (Map<String, dynamic> jsonUser in jsonUsers) {
      users.add(User.fromJson(jsonUser));
    }
    return VideoChatParticipantsInvited(users: users);
  }
}
