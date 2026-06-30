import 'dart:convert';

import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';
import 'package:jpl_json_dynamic_widget_plugin_lottie/json_dynamic_widget_plugin_lottie.dart';
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
  JsonLottiePluginRegistrar.registerDefaults(registry: registry);

  registry.navigatorKey = navigatorKey;

  final data = JsonWidgetData.fromDynamic(
    json.decode(await rootBundle.loadString('assets/pages/lotties.json')),
  );

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
