import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonLayoutBuilderBuilder.kType;

    expect(type, 'layout_builder');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonLayoutBuilderBuilder,
      true,
    );
  });
}
