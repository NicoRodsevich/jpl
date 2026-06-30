import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonRadioBuilder.kType;

    expect(type, 'radio');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({'id': 'foo'})
          is JsonRadioBuilder,
      true,
    );
  });
}
