import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonInteractiveViewerBuilder.kType;

    expect(type, 'interactive_viewer');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonInteractiveViewerBuilder,
      true,
    );
  });
}
