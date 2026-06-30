import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonMergeSemanticsBuilder.kType;

    expect(type, 'merge_semantics');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonMergeSemanticsBuilder,
      true,
    );
  });
}
