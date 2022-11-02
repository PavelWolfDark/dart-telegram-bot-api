class User {
  final int id;
  final bool isBot;
  final String firstName;
  final String? lastName;
  final String? username;
  final String? languageCode;
  final bool? isPremium;
  final bool? addedToAttachmentMenu;
  final bool? canJoinGroups;
  final bool? canReadAllGroupMessages;
  final bool? supportsInlineQueries;

  User(
      {required this.id,
      required this.isBot,
      required this.firstName,
      this.lastName,
      this.username,
      this.languageCode,
      this.isPremium,
      this.addedToAttachmentMenu,
      this.canJoinGroups,
      this.canReadAllGroupMessages,
      this.supportsInlineQueries});

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      isBot: json['is_bot'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      languageCode: json['language_code'],
      isPremium: json['is_premium'],
      addedToAttachmentMenu: json['added_to_attachment_menu'],
      canJoinGroups: json['can_join_groups'],
      canReadAllGroupMessages: json['can_read_all_group_messages'],
      supportsInlineQueries: json['supports_inline_queries']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['is_bot'] = isBot;
    json['first_name'] = firstName;
    if (lastName != null) {
      json['last_name'] = lastName;
    }
    if (username != null) {
      json['username'] = username;
    }
    if (languageCode != null) {
      json['language_code'] = languageCode;
    }
    if (isPremium != null) {
      json['is_premium'] = isPremium;
    }
    if (addedToAttachmentMenu != null) {
      json['added_to_attachment_menu'] = addedToAttachmentMenu;
    }
    if (canJoinGroups != null) {
      json['can_join_groups'] = canJoinGroups;
    }
    if (canReadAllGroupMessages != null) {
      json['can_read_all_group_messages'] = canReadAllGroupMessages;
    }
    if (supportsInlineQueries != null) {
      json['supports_inline_queries'] = supportsInlineQueries;
    }
    return json;
  }
}
