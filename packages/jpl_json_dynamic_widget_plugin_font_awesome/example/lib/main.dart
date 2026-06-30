import 'dart:convert';

import 'package:jpl_font_awesome_flutter_named/jpl_font_awesome_flutter_named.dart';
import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';
import 'package:jpl_json_dynamic_widget_plugin_font_awesome/jpl_json_dynamic_widget_plugin_font_awesome.dart';
import 'package:logging/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    if (record.error != null) {
      debugPrint('${record.error}');
    }
    if (record.stackTrace != null) {
      debugPrint('${record.stackTrace}');
    }
  });

  final navigatorKey = GlobalKey<NavigatorState>();

  final registry = JsonWidgetRegistry.instance;
  JsonFontAwesomePluginRegistrar.registerDefaults(registry: registry);

  registry.navigatorKey = navigatorKey;

  final data = JsonWidgetData.fromDynamic(
    json.decode(await rootBundle.loadString('assets/pages/font_awesome.json')),
  );

  registry.setValue('icons', faIconNameMapping.keys);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleWidgetPage(
        data: data,
      ),
      theme: ThemeData.light(),
    ),
  );
}

class ExampleWidgetPage extends StatelessWidget {
  const ExampleWidgetPage({
    super.key,
    required this.data,
  });

  final JsonWidgetData data;

  @override
  Widget build(BuildContext context) => data.build(context: context);
}
