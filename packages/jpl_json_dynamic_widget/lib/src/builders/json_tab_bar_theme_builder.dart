import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';
import 'package:jpl_json_theme/jpl_json_theme.dart';

part 'json_tab_bar_theme_builder.g.dart';

/// Builder that can build a [TabBarTheme] widget.
@jsonWidget
abstract class _JsonTabBarThemeBuilder extends JsonWidgetBuilder {
  const _JsonTabBarThemeBuilder({required super.args});

  @override
  TabBarTheme buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
