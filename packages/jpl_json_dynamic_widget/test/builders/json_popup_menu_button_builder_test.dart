import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonPopupMenuButtonBuilder.kType;

    expect(type, 'popup_menu_button');
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({
            'itemBuilder': (BuildContext context) => <PopupMenuEntry>[],
          })
          is JsonPopupMenuButtonBuilder,
      true,
    );
  });
}
