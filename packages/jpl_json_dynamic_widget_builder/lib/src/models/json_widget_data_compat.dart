import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';

/// Compatibility shims that preserve the pre-v12 [JsonWidgetData] surface used
/// throughout the builder (`type`, `id`, `args`, `builder()`, `children`, and a
/// `copyWith` that accepts `args`/`children`).
///
/// In `jpl_json_dynamic_widget` v12 these were renamed (`jsonWidgetType`,
/// `jsonWidgetId`, `jsonWidgetArgs`, `jsonWidgetBuilder`) and the child widgets
/// now live inside `jsonWidgetArgs` under the `child` / `children` keys rather
/// than on a dedicated field.  These extensions bridge the gap without changing
/// the builder's logic.
extension JsonWidgetDataCompat on JsonWidgetData {
  String get type => jsonWidgetType;

  String get id => jsonWidgetId;

  dynamic get args => jsonWidgetArgs;

  JsonWidgetBuilder builder() => jsonWidgetBuilder();

  /// Returns the child widgets parsed from [jsonWidgetArgs].  Supports both a
  /// single `child` and a `children` list, mirroring the legacy behavior.
  List<JsonWidgetData>? get children {
    final args = jsonWidgetArgs;
    if (args is! Map) {
      return null;
    }

    final raw = args['children'] ?? args['child'];
    if (raw == null) {
      return null;
    }

    final list = raw is List ? raw : [raw];
    return list
        .map<JsonWidgetData>(
          (e) => e is JsonWidgetData
              ? e
              : JsonWidgetData.fromDynamic(e, registry: jsonWidgetRegistry),
        )
        .toList();
  }

  /// Legacy-style copy that also accepts `args` and `children`.  When
  /// [children] is provided it is written back into the resulting args under
  /// the `children` key.
  JsonWidgetData copyWithCompat({
    dynamic args,
    List<JsonWidgetData>? children,
  }) {
    var newArgs = args ?? jsonWidgetArgs;

    if (children != null) {
      final map = newArgs is Map
          ? Map<String, dynamic>.from(newArgs)
          : <String, dynamic>{};
      map['children'] = children.map((e) => e.toJson()).toList();
      newArgs = map;
    }

    return copyWith(jsonWidgetArgs: newArgs);
  }
}
