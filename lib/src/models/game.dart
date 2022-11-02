import 'photo_size.dart';
import 'message_entity.dart';
import 'animation.dart';

class Game {
  final String title;
  final String description;
  final List<PhotoSize> photo;
  final String? text;
  final List<MessageEntity>? textEntities;
  final Animation? animation;

  Game(
      {required this.title,
      required this.description,
      required this.photo,
      this.text,
      this.textEntities,
      this.animation});

  factory Game.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonPhoto = json['photo'];
    List<PhotoSize> photo = [];
    for (Map<String, dynamic> jsonPhotoSize in jsonPhoto) {
      photo.add(PhotoSize.fromJson(jsonPhotoSize));
    }
    List<dynamic>? jsonTextEntities = json['text_entities'];
    List<MessageEntity>? textEntities;
    if (jsonTextEntities != null) {
      textEntities = [];
      for (Map<String, dynamic> jsonEntity in jsonTextEntities) {
        textEntities.add(MessageEntity.fromJson(jsonEntity));
      }
    }
    Map<String, dynamic>? jsonAnimation = json['animation'];
    Animation? animation;
    if (jsonAnimation != null) {
      animation = Animation.fromJson(jsonAnimation);
    }
    return Game(
        title: json['title'],
        description: json['description'],
        photo: photo,
        text: json['text'],
        textEntities: textEntities,
        animation: animation);
  }
}
