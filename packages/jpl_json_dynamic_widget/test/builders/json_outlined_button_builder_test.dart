import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonOutlinedButtonBuilder.kType;

    expect(type, 'outlined_button');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonOutlinedButtonBuilder,
      true,
    );
  });
}
