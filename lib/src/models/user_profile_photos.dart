import 'photo_size.dart';

class UserProfilePhotos {
  final int totalCount;
  final List<List<PhotoSize>> photos;

  UserProfilePhotos({required this.totalCount, required this.photos});

  factory UserProfilePhotos.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonPhotos = json['photos'];
    List<List<PhotoSize>> photos = [];
    for (List<dynamic> jsonPhoto in jsonPhotos) {
      List<PhotoSize> photo = [];
      for (Map<String, dynamic> jsonPhotoSize in jsonPhoto) {
        photo.add(PhotoSize.fromJson(jsonPhotoSize));
      }
      photos.add(photo);
    }
    return UserProfilePhotos(totalCount: json['total_count'], photos: photos);
  }
}
