import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonSetDefaultValueBuilder.kType;

    expect(type, 'set_default_value');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonSetDefaultValueBuilder,
      true,
    );
  });
}
