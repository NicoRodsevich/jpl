import 'dart:convert';

import 'package:jpl_dynamic_service/jpl_dynamic_service.dart';
import 'package:jpl_json_class/jpl_json_class.dart';
import 'package:logging/logging.dart';
import 'package:jpl_template_expressions/jpl_template_expressions.dart';

class WriteStep extends ServiceStep {
  WriteStep({
    Map<String, dynamic>? args,
  }) : super(
          args: args,
          type: kType,
        );
  static const kType = 'write';
  static final Logger _logger = Logger('WriteStep');

  @override
  Future<void> applyStep(
    ServiceContext context,
    Map<String, dynamic> args,
  ) async {
    var contents = args['contents'];
    final path = Template(
      syntax: context.registry.templateSyntax,
      value: args['path'],
    ).process(context: context.variables);

    final format = JsonClass.parseBool(args['format']);
    final ref = args['\$ref'];

    if (ref != null) {
      contents = await context.registry.loadRef(ref, context: context);
    }

    if (contents is Map || contents is List) {
      try {
        contents = format == true
            ? const JsonEncoder.withIndent('  ').convert(contents)
            : json.encode(contents);
      } catch (e, stack) {
        _logger.fine({
          'message': 'Error attempting to JSON encode data',
          'sessionId': context.request.sessionId,
          'requestId': context.request.requestId,
        }, e, stack);
      }
    }

    if (contents is String) {
      contents = process(context, contents);
    }

    await context.registry.write(
      path,
      contents,
      context: context,
      properties: args,
    );
  }
}
