import 'dart:convert';
import '../../../models/shipping_option.dart';
import '../../request_parameters.dart';

class RequestParametersAnswerShippingQuery implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String shippingQueryId;
  final bool ok;
  final List<ShippingOption>? shippingOptions;
  final String? errorMessage;

  RequestParametersAnswerShippingQuery(
      {required this.shippingQueryId,
      required this.ok,
      this.shippingOptions,
      this.errorMessage});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['shipping_query_id'] = shippingQueryId;
    json['ok'] = ok;
    if (shippingOptions != null) {
      List<Map<String, dynamic>> jsonShippingOptions = [];
      for (final option in shippingOptions!) {
        jsonShippingOptions.add(option.toJson());
      }
      json['shipping_options'] = jsonShippingOptions;
    }
    if (errorMessage != null) {
      json['error_message'] = errorMessage;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['shipping_query_id'] = shippingQueryId;
    formData['ok'] = ok.toString();
    if (shippingOptions != null) {
      List<Map<String, dynamic>> jsonShippingOptions = [];
      for (final option in shippingOptions!) {
        jsonShippingOptions.add(option.toJson());
      }
      formData['shipping_options'] = jsonEncode(jsonShippingOptions);
    }
    if (errorMessage != null) {
      formData['error_message'] = errorMessage!;
    }
    return formData;
  }
}
