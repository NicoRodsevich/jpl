import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonIntrinsicWidthBuilder.kType;

    expect(type, 'intrinsic_width');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonIntrinsicWidthBuilder,
      true,
    );
  });
}
