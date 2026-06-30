import 'dart:convert';
import 'dart:io';

import 'package:jpl_dynamic_service/jpl_dynamic_service.dart';
import 'package:jpl_json_class/jpl_json_class.dart';
import 'package:logging/logging.dart';
import 'package:mime/mime.dart';
import 'package:jpl_template_expressions/jpl_template_expressions.dart';

class SetResponseStep extends ServiceStep {
  SetResponseStep({
    Map<String, dynamic>? args,
  }) : super(
          args: args,
          type: kType,
        );
  static const kType = 'set_response';
  static final Logger _logger = Logger('SetResponseStep');

  @override
  Future<void> applyStep(
    ServiceContext context,
    Map<String, dynamic> args,
  ) async {
    var body = args['body'];
    var contentType = context.response.contentType;

    final ref = args[r'$ref'];
    if (ref == null) {
      final file = args['file'];
      if (file != null) {
        contentType = lookupMimeType(file) ?? contentType;
        body = File(file).readAsBytesSync().toList();
      }
    } else {
      var data = await context.registry.loadRef(ref, context: context);

      if (data is! List<int> && (data is Map || data is Iterable)) {
        try {
          data = json.encode(data);
        } catch (e, stack) {
          _logger.fine({
            'message': 'Error attempting to JSON encode data',
            'sessionId': context.request.sessionId,
            'requestId': context.request.requestId,
          }, e, stack);
        }
      }

      body = data;
    }

    if (body is String) {
      body = Template(
        syntax: context.registry.templateSyntax,
        value: body,
      ).process(context: context.variables);
    }

    context.response.body = body == null
        ? const <int>[]
        : body is String
            ? utf8.encode(body)
            : body;
    context.response.contentType =
        args['content-type'] ?? args['contentType'] ?? contentType;
    context.response.headers.addAll(
      args['headers'] ?? const <String, String>{},
    );
    context.response.status = JsonClass.maybeParseInt(args['status']) ?? 200;
  }
}
