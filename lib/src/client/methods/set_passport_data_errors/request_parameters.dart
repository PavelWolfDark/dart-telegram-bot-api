import 'dart:convert';
import '../../../models/passport_element_error.dart';
import '../../request_parameters.dart';

class RequestParametersSetPassportDataErrors implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int userId;
  final List<PassportElementError> errors;

  RequestParametersSetPassportDataErrors(
      {required this.userId, required this.errors});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = userId;
    List<Map<String, dynamic>> jsonErrors = [];
    for (final error in errors) {
      jsonErrors.add(error.toJson());
    }
    json['errors'] = jsonErrors;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['user_id'] = userId.toString();
    List<Map<String, dynamic>> jsonErrors = [];
    for (final error in errors) {
      jsonErrors.add(error.toJson());
    }
    formData['errors'] = jsonEncode(jsonErrors);
    return formData;
  }
}
