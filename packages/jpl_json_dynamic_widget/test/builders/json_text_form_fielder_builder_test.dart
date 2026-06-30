import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonTextFormFieldBuilder.kType;

    expect(type, 'text_form_field');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonTextFormFieldBuilder,
      true,
    );
  });
}
