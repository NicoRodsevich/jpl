import 'package:jpl_json_dynamic_widget/json_dynamic_widget.dart';
import 'package:jpl_json_dynamic_widget_plugin_charts_flutter/json_dynamic_widget_plugin_charts_flutter.dart';

import 'schema/json_charts_flutter_schemas.dart';
import 'values/create_series_function.dart';
import 'values/material_palette_values.dart';

class JsonChartsFlutterPlugin {
  static void bind(JsonWidgetRegistry registry) {
    final schemaCache = SchemaCache();

    schemaCache.addSchemas(JsonChartsFlutterSchemas.enums);
    schemaCache.addSchemas(JsonChartsFlutterSchemas.objects);

    MaterialPaletteValues.values.forEach(
      (key, value) => registry.setValue(key, value),
    );

    registry.registerFunctions({
      CreateSeriesFunction.id: CreateSeriesFunction.body,
    });

    registry.registerCustomBuilders({
      BarChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: BarChartBuilder.fromDynamic,
        schemaId: BarChartSchema.id,
      ),
      LineChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: LineChartBuilder.fromDynamic,
        schemaId: LineChartSchema.id,
      ),
      NumericPieChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: NumericPieChartBuilder.fromDynamic,
        schemaId: PieChartSchema.id,
      ),
      NumericComboChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: NumericComboChartBuilder.fromDynamic,
        schemaId: NumericComboChartSchema.id,
      ),
      OrdinalComboChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: OrdinalComboChartBuilder.fromDynamic,
        schemaId: OrdinalComboChartSchema.id,
      ),
      ScatterPlotChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: ScatterPlotChartBuilder.fromDynamic,
        schemaId: ScatterPlotChartSchema.id,
      ),
      StringPieChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: StringPieChartBuilder.fromDynamic,
        schemaId: PieChartSchema.id,
      ),
      TimeSeriesChartBuilder.kType: const JsonWidgetBuilderContainer(
        builder: TimeSeriesChartBuilder.fromDynamic,
        schemaId: TimeSeriesChartSchema.id,
      ),
    });
  }
}
