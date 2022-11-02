import '../../request_parameters.dart';

class RequestParametersDeleteWebhook implements RequestParameters {
  @override
  final hasInputFiles = false;
  final bool? dropPendingUpdates;

  RequestParametersDeleteWebhook({this.dropPendingUpdates});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (dropPendingUpdates != null) {
      json['drop_pending_updates'] = dropPendingUpdates;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (dropPendingUpdates != null) {
      formData['drop_pending_updates'] = dropPendingUpdates.toString();
    }
    return formData;
  }
}
