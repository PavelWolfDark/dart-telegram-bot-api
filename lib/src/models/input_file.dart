import 'dart:convert';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';

class InputFile {
  bool _isFinalized = false;
  final ByteStream _stream;
  final int length;
  final String? filename;
  final MediaType contentType;

  bool get isFinalized => _isFinalized;

  InputFile(Stream<List<int>> stream, this.length,
      {this.filename, MediaType? contentType})
      : _stream = ByteStream(stream),
        contentType = contentType ?? MediaType('application', 'octet-stream');

  factory InputFile.fromBytes(List<int> bytes,
      {String? filename, MediaType? contentType}) {
    final stream = ByteStream.fromBytes(bytes);
    return InputFile(stream, bytes.length,
        filename: filename, contentType: contentType);
  }

  factory InputFile.fromString(String source,
      {String? filename, MediaType? contentType}) {
    contentType ??= MediaType('text', 'plain');
    final encoding =
        Encoding.getByName(contentType.parameters['charset']) ?? utf8;
    contentType = contentType.change(parameters: {'charset': encoding.name});
    final bytes = encoding.encode(source);
    return InputFile.fromBytes(bytes,
        filename: filename, contentType: contentType);
  }

  ByteStream finalize() {
    if (_isFinalized) {
      throw StateError("Can't finalize a finalized InputFile.");
    }
    _isFinalized = true;
    return _stream;
  }
}
