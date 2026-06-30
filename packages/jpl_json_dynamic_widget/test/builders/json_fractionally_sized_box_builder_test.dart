import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonFractionallySizedBoxBuilder.kType;

    expect(type, 'fractionally_sized_box');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonFractionallySizedBoxBuilder,
      true,
    );
  });
}
