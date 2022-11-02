import 'dart:convert';
import '../../../models/input_file.dart';
import '../../request_parameters.dart';

class RequestParametersSetWebhook implements RequestParameters {
  final String url;
  final InputFile? certificate;
  final String? ipAddress;
  final int? maxConnections;
  // List<UpdateType>
  final List<String>? allowedUpdates;
  final bool? dropPendingUpdates;
  final String? secretToken;

  @override
  bool get hasInputFiles => certificate != null;

  RequestParametersSetWebhook(
      {required this.url,
      this.certificate,
      this.ipAddress,
      this.maxConnections,
      this.allowedUpdates,
      this.dropPendingUpdates,
      this.secretToken});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['url'] = url;
    if (certificate != null) {
      json['certificate'] = certificate;
    }
    if (ipAddress != null) {
      json['ip_address'] = ipAddress;
    }
    if (maxConnections != null) {
      json['max_connections'] = maxConnections;
    }
    if (allowedUpdates != null) {
      json['allowed_updates'] = [...allowedUpdates!];
    }
    if (dropPendingUpdates != null) {
      json['drop_pending_updates'] = dropPendingUpdates;
    }
    if (secretToken != null) {
      json['secret_token'] = secretToken;
    }
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['url'] = url;
    if (certificate != null) {
      formData['certificate'] = certificate;
    }
    if (ipAddress != null) {
      formData['ip_address'] = ipAddress;
    }
    if (maxConnections != null) {
      formData['max_connections'] = maxConnections.toString();
    }
    if (allowedUpdates != null) {
      formData['allowed_updates'] = jsonEncode([...allowedUpdates!]);
    }
    if (dropPendingUpdates != null) {
      formData['drop_pending_updates'] = dropPendingUpdates.toString();
    }
    if (secretToken != null) {
      formData['secret_token'] = secretToken;
    }
    return formData;
  }
}
