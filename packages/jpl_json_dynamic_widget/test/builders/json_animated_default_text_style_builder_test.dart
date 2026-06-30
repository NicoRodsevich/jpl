import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonAnimatedDefaultTextStyleBuilder.kType;

    expect(type, 'animated_default_text_style');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({
            'duration': 1000,
            'style': {'color': '#FFF'},
          })
          is JsonAnimatedDefaultTextStyleBuilder,
      true,
    );
  });
}
