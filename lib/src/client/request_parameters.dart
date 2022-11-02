abstract class RequestParameters {
  bool get hasInputFiles;

  Map<String, dynamic> toJson();

  // Map<String, String | InputFile>
  Map<String, dynamic> toFormData();
}
