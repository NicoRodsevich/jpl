import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

part 'json_stack_builder.g.dart';

/// Builder that can build an [Stack] widget.
@jsonWidget
abstract class _JsonStackBuilder extends JsonWidgetBuilder {
  const _JsonStackBuilder({required super.args});

  @override
  Stack buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
