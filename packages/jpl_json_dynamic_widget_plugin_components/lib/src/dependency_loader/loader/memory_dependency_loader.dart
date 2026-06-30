import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';
import 'package:jpl_json_dynamic_widget_plugin_components/jpl_json_dynamic_widget_plugin_components.dart';

/// Loader that keeps the dependencies in memory
class MemoryDependencyLoader implements DependencyLoader {
  MemoryDependencyLoader({required this.dependencyData});

  Map<Dependency, String> dependencyData = {};

  @override
  Future<String?> load(Dependency dependency, BuildContext context) {
    if (dependencyData.containsKey(dependency)) {
      return Future.value(dependencyData[dependency]);
    }
    return Future.value(null);
  }
}
