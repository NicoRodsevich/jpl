import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

import '../dependency.dart';

abstract class DependencyLoader {
  // Loads the dependency data
  Future<String?> load(Dependency dependency, BuildContext context);
}
