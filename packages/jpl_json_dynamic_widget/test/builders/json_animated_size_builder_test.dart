import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonAnimatedSizeBuilder.kType;

    expect(type, 'animated_size');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({'duration': 1000})
          is JsonAnimatedSizeBuilder,
      true,
    );
  });
}
