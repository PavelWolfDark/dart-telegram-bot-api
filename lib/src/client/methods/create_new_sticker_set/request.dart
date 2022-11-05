import '../../../constants/request_method.dart';
import '../../../models/input_file.dart';
import '../../../models/mask_position.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateNewStickerSet extends Request {
  RequestCreateNewStickerSet(RequestParametersCreateNewStickerSet parameters)
      : super(RequestMethod.createNewStickerSet, parameters);

  factory RequestCreateNewStickerSet.create(
      {required int userId,
      required String name,
      required String title,
      // InputFile | String
      Object? pngSticker,
      InputFile? tgsSticker,
      InputFile? webmSticker,
      // StickerType
      String? stickerType,
      required String emojis,
      MaskPosition? maskPosition}) {
    final requestParameters = RequestParametersCreateNewStickerSet(
        userId: userId,
        name: name,
        title: title,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        stickerType: stickerType,
        emojis: emojis,
        maskPosition: maskPosition);
    return RequestCreateNewStickerSet(requestParameters);
  }

  @override
  ResponseCreateNewStickerSet respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateNewStickerSet.fromJson(json)..withRequest(this);
}
