import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/mask_position.dart';
import '../../request_parameters.dart';

class RequestParametersCreateNewStickerSet implements RequestParameters {
  final int userId;
  final String name;
  final String title;
  // InputFile | String
  final Object? pngSticker;
  final InputFile? tgsSticker;
  final InputFile? webmSticker;
  // StickerType
  final String? stickerType;
  final String emojis;
  final MaskPosition? maskPosition;

  @override
  bool get hasInputFiles =>
      pngSticker is InputFile || tgsSticker != null || webmSticker != null;

  RequestParametersCreateNewStickerSet(
      {required this.userId,
      required this.name,
      required this.title,
      this.pngSticker,
      this.tgsSticker,
      this.webmSticker,
      this.stickerType,
      required this.emojis,
      this.maskPosition});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = userId;
    json['name'] = name;
    json['title'] = title;
    if (pngSticker != null) {
      json['png_sticker'] = pngSticker;
    }
    if (tgsSticker != null) {
      json['tgs_sticker'] = tgsSticker;
    }
    if (webmSticker != null) {
      json['webm_sticker'] = webmSticker;
    }
    if (stickerType != null) {
      json['sticker_type'] = stickerType;
    }
    json['emojis'] = emojis;
    if (maskPosition != null) {
      json['mask_position'] = maskPosition!.toJson();
    }
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['user_id'] = userId.toString();
    formData['name'] = name;
    formData['title'] = title;
    if (pngSticker != null) {
      formData['png_sticker'] = pngSticker;
    }
    if (tgsSticker != null) {
      formData['tgs_sticker'] = tgsSticker;
    }
    if (webmSticker != null) {
      formData['webm_sticker'] = webmSticker;
    }
    if (stickerType != null) {
      formData['sticker_type'] = stickerType;
    }
    formData['emojis'] = emojis;
    if (maskPosition != null) {
      formData['mask_position'] = jsonEncode(maskPosition!.toJson());
    }
    return formData;
  }
}
