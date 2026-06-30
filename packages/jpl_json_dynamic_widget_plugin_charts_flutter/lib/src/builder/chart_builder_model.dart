import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';

/// Minimal [JsonWidgetBuilderModel] used by the chart builders.
///
/// The chart builders decode their arguments eagerly in their `fromDynamic`
/// factories and render directly via `buildCustom`, so they do not rely on the
/// model-based rendering path.  This model exists only to satisfy the
/// [JsonWidgetBuilder.createModel] contract.
class ChartBuilderModel extends JsonWidgetBuilderModel {
  const ChartBuilderModel(super.args);

  @override
  Map<String, dynamic> toJson() => args;
}
