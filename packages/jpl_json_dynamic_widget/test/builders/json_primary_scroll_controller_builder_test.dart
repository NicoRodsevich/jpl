import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonPrimaryScrollControllerBuilder.kType;

    expect(type, 'primary_scroll_controller');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonPrimaryScrollControllerBuilder,
      true,
    );
  });
}
