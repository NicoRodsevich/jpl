import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonInkWellBuilder.kType;

    expect(type, 'ink_well');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonInkWellBuilder,
      true,
    );
  });
}
