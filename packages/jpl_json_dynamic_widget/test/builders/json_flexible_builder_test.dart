import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonFlexibleBuilder.kType;

    expect(type, 'flexible');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonFlexibleBuilder,
      true,
    );
  });
}
