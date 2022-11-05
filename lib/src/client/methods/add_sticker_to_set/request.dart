import '../../../constants/request_method.dart';
import '../../../models/input_file.dart';
import '../../../models/mask_position.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAddStickerToSet extends Request {
  RequestAddStickerToSet(RequestParametersAddStickerToSet parameters)
      : super(RequestMethod.addStickerToSet, parameters);

  factory RequestAddStickerToSet.create(
      {required int userId,
      required String name,
      // InputFile | String
      Object? pngSticker,
      InputFile? tgsSticker,
      InputFile? webmSticker,
      required String emojis,
      MaskPosition? maskPosition}) {
    final requestParameters = RequestParametersAddStickerToSet(
        userId: userId,
        name: name,
        pngSticker: pngSticker,
        tgsSticker: tgsSticker,
        webmSticker: webmSticker,
        emojis: emojis,
        maskPosition: maskPosition);
    return RequestAddStickerToSet(requestParameters);
  }

  @override
  ResponseAddStickerToSet respondFromJson(Map<String, dynamic> json) =>
      ResponseAddStickerToSet.fromJson(json)..withRequest(this);
}
