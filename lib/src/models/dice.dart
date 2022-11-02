class Dice {
  // DiceEmoji
  final String emoji;
  final int value;

  Dice({required this.emoji, required this.value});

  factory Dice.fromJson(Map<String, dynamic> json) =>
      Dice(emoji: json['emoji'], value: json['value']);
}
