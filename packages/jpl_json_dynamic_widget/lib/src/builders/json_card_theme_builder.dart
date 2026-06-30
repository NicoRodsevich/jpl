import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';
import 'package:jpl_json_theme/jpl_json_theme.dart';

part 'json_card_theme_builder.g.dart';

/// Builder that can build a [CardTheme] widget.
@jsonWidget
abstract class _JsonCardThemeBuilder extends JsonWidgetBuilder {
  const _JsonCardThemeBuilder({required super.args});

  @override
  CardTheme buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
