import '../../constants/error_code.dart';
import '../error.dart';

class NotFoundError extends ApiError {
  NotFoundError() : super(ErrorCode.notFound);
}
