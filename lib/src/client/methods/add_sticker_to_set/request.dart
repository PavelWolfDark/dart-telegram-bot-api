import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAddStickerToSet extends Request {
  RequestAddStickerToSet(RequestParametersAddStickerToSet parameters)
      : super(RequestMethod.addStickerToSet, parameters);

  @override
  ResponseAddStickerToSet respondFromJson(Map<String, dynamic> json) =>
      ResponseAddStickerToSet.fromJson(json)..withRequest(this);
}
