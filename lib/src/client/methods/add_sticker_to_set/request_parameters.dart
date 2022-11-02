import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/mask_position.dart';
import '../../request_parameters.dart';

class RequestParametersAddStickerToSet implements RequestParameters {
  final int userId;
  final String name;
  // InputFile | String
  final Object? pngSticker;
  final InputFile? tgsSticker;
  final InputFile? webmSticker;
  final String emojis;
  final MaskPosition? maskPosition;

  @override
  bool get hasInputFiles =>
      pngSticker is InputFile || tgsSticker != null || webmSticker != null;

  RequestParametersAddStickerToSet(
      {required this.userId,
      required this.name,
      this.pngSticker,
      this.tgsSticker,
      this.webmSticker,
      required this.emojis,
      this.maskPosition});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = userId;
    json['name'] = name;
    if (pngSticker != null) {
      json['png_sticker'] = pngSticker;
    }
    if (tgsSticker != null) {
      json['tgs_sticker'] = tgsSticker;
    }
    if (webmSticker != null) {
      json['webm_sticker'] = webmSticker;
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
    if (pngSticker != null) {
      formData['png_sticker'] = pngSticker;
    }
    if (tgsSticker != null) {
      formData['tgs_sticker'] = tgsSticker;
    }
    if (webmSticker != null) {
      formData['webm_sticker'] = webmSticker;
    }
    formData['emojis'] = emojis;
    if (maskPosition != null) {
      formData['mask_position'] = jsonEncode(maskPosition!.toJson());
    }
    return formData;
  }
}
