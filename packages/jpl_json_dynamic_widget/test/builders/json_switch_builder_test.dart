import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonSwitchBuilder.kType;

    expect(type, 'switch');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonSwitchBuilder,
      true,
    );
  });
}
