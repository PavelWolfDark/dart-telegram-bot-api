import 'dart:convert';
import '../../../models/bot_command.dart';
import '../../../models/bot_command_scope.dart';
import '../../request_parameters.dart';

class RequestParametersSetMyCommands implements RequestParameters {
  @override
  final hasInputFiles = false;
  final List<BotCommand> commands;
  final BotCommandScope? scope;
  final String? languageCode;

  RequestParametersSetMyCommands(
      {required this.commands, this.scope, this.languageCode});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    List<Map<String, dynamic>> jsonCommands = [];
    for (final command in commands) {
      jsonCommands.add(command.toJson());
    }
    json['commands'] = jsonCommands;
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
    List<Map<String, dynamic>> jsonCommands = [];
    for (final command in commands) {
      jsonCommands.add(command.toJson());
    }
    formData['commands'] = jsonEncode(jsonCommands);
    if (scope != null) {
      formData['scope'] = jsonEncode(scope!.toJson());
    }
    if (languageCode != null) {
      formData['language_code'] = languageCode!;
    }
    return formData;
  }
}
