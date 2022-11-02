import 'dart:convert';
import '../../request_parameters.dart';

class RequestParametersGetUpdates implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int? offset;
  final int? limit;
  final int? timeout;
  // List<UpdateType>
  final List<String>? allowedUpdates;

  RequestParametersGetUpdates(
      {this.offset, this.limit, this.timeout, this.allowedUpdates});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (offset != null) {
      json['offset'] = offset;
    }
    if (limit != null) {
      json['limit'] = limit;
    }
    if (timeout != null) {
      json['timeout'] = timeout;
    }
    if (allowedUpdates != null) {
      json['allowed_updates'] = [...allowedUpdates!];
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (offset != null) {
      formData['offset'] = offset.toString();
    }
    if (limit != null) {
      formData['limit'] = limit.toString();
    }
    if (timeout != null) {
      formData['timeout'] = timeout.toString();
    }
    if (allowedUpdates != null) {
      formData['allowed_updates'] = jsonEncode([...allowedUpdates!]);
    }
    return formData;
  }
}
