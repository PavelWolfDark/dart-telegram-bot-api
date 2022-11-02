import 'dart:convert';
import '../../../models/bot_command_scope.dart';
import '../../request_parameters.dart';

class RequestParametersGetMyCommands implements RequestParameters {
  @override
  final hasInputFiles = false;
  final BotCommandScope? scope;
  final String? languageCode;

  RequestParametersGetMyCommands({this.scope, this.languageCode});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (scope != null) {
      json['scope'] = scope!.toJson();
    }
    if (languageCode != null) {
      json['language_code'] = languageCode;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (scope != null) {
      formData['scope'] = jsonEncode(scope!.toJson());
    }
    if (languageCode != null) {
      formData['language_code'] = languageCode!;
    }
    return formData;
  }
}
