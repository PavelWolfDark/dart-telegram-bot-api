import 'dart:convert';
import '../../request_parameters.dart';

class RequestParametersGetCustomEmojiStickers implements RequestParameters {
  @override
  final hasInputFiles = false;
  final List<String> customEmojiIds;

  RequestParametersGetCustomEmojiStickers({required this.customEmojiIds});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['custom_emoji_ids'] = [...customEmojiIds];
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['custom_emoji_ids'] = jsonEncode([...customEmojiIds]);
    return formData;
  }
}
