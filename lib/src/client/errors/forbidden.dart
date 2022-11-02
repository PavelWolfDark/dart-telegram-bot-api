import '../../constants/error_code.dart';
import '../error.dart';

class ForbiddenError extends ApiError {
  ForbiddenError() : super(ErrorCode.forbidden);
}
