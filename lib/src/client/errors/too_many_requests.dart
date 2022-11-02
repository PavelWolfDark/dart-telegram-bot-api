import '../../constants/error_code.dart';
import '../error.dart';

class TooManyRequestsError extends ApiError {
  TooManyRequestsError() : super(ErrorCode.tooManyRequests);
}
