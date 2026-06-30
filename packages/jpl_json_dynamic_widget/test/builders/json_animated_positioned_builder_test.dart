import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonAnimatedPositionedBuilder.kType;

    expect(type, 'animated_positioned');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({'duration': 1000})
          is JsonAnimatedPositionedBuilder,
      true,
    );
  });
}
