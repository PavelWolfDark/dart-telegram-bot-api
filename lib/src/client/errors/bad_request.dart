import '../../constants/error_code.dart';
import '../error.dart';

class BadRequestError extends ApiError {
  BadRequestError() : super(ErrorCode.badRequest);
}
