import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonCustomScrollViewBuilder.kType;

    expect(type, 'custom_scroll_view');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonCustomScrollViewBuilder,
      true,
    );
  });
}
