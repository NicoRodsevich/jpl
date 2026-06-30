import 'dart:async';

import 'package:jpl_json_schema2/json_schema.dart';
import 'package:jpl_json_theme/json_theme_schemas.dart';

class SchemaBloc {
  StreamController<void>? _controller = StreamController<void>.broadcast();

  JsonSchema? _current;

  JsonSchema? get current => _current;
  Stream<void>? get stream => _controller?.stream;

  set current(JsonSchema? current) {
    _current = current;
    _controller!.add(null);
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }

  JsonSchema getSchema(String schemaId) {
    final refProvider = RefProvider.sync((String ref) {
      final schema = SchemaCache().getSchema(ref);
      if (schema == null) {
        throw Exception('Unable to find schema: $ref');
      }

      return Map<String, dynamic>.from(schema);
    });

    final schemaData = SchemaCache().getSchema(schemaId)!;
    final jsonSchema = JsonSchema.create(
      schemaData,
      refProvider: refProvider,
    );

    return jsonSchema;
  }

  void notify() {
    _controller?.add(null);
  }
}
