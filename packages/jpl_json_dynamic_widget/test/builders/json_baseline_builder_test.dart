import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonBaselineBuilder.kType;

    expect(type, 'baseline');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({
            'baseline': 20,
            'baselineType': 'ideographic',
          })
          is JsonBaselineBuilder,
      true,
    );
  });
}
