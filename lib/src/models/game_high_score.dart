import 'user.dart';

class GameHighScore {
  final int position;
  final User user;
  final int score;

  GameHighScore(
      {required this.position, required this.user, required this.score});

  factory GameHighScore.fromJson(Map<String, dynamic> json) {
    final user = User.fromJson(json['user']);
    return GameHighScore(
        position: json['position'], user: user, score: json['score']);
  }
}
