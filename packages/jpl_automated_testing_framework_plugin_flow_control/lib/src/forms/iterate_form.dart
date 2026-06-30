import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_flow_control/jpl_automated_testing_framework_plugin_flow_control.dart';
import 'package:flutter/material.dart';
import 'package:jpl_form_validation/jpl_form_validation.dart';
import 'package:jpl_json_class/jpl_json_class.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class IterateForm extends TestStepForm {
  const IterateForm();

  @override
  bool get supportsMinified => true;

  @override
  TranslationEntry get title =>
      TestFlowControlTranslations.atf_flow_title_iterate;

  @override
  Widget buildForm(
    BuildContext context,
    Map<String, dynamic>? values, {
    bool minify = false,
  }) {
    final translator = Translator.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (minify != true)
          buildHelpSection(
            context,
            TestFlowControlTranslations.atf_flow_help_iterate,
            minify: minify,
          ),
        buildValuesSection(
          context,
          [
            buildEditText(
              context: context,
              defaultValue: '0',
              id: 'start',
              label: TestFlowControlTranslations.atf_flow_form_start,
              validators: [
                RequiredValidator(),
                NumberValidator(allowDecimal: false),
              ],
              values: values!,
            ),
            const SizedBox(height: 16.0),
            buildEditText(
              context: context,
              defaultValue: '1',
              id: 'end',
              label: TestFlowControlTranslations.atf_flow_form_end,
              validators: [
                RequiredValidator(),
                NumberValidator(allowDecimal: false),
                _EndValidator(values, translator),
              ],
              values: values,
            ),
            const SizedBox(height: 16.0),
            TestStepPicker(
              label: translator.translate(
                TestFlowControlTranslations.atf_flow_form_step,
              ),
              onStepChanged: (step) => values['step'] = step?.toJson(),
              step: TestStep.fromDynamicNullable(values['step']),
            ),
            const SizedBox(height: 16.0),
            buildEditText(
              context: context,
              id: 'variableName',
              label: TestFlowControlTranslations
                  .atf_flow_form_counter_variable_name,
              values: values,
            ),
          ],
          minify: minify,
        ),
      ],
    );
  }
}

class _EndValidator extends ValueValidator {
  _EndValidator(this.values, this.translator);

  final Map<String, dynamic>? values;
  final Translator translator;

  @override
  String get type => 'end';

  @override
  Map<String, dynamic> toJson() => {};

  @override
  String? validate({
    required String label,
    required String? value,
  }) {
    String? error;

    final start = JsonClass.parseInt(values!['start']);
    final end = JsonClass.parseInt(value);

    if (start >= end) {
      error = translator.translate(
        TestFlowControlTranslations.atf_flow_error_start_less_end,
      );
    }

    return error;
  }
}
