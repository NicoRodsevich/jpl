import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_flow_control/jpl_automated_testing_framework_plugin_flow_control.dart';
import 'package:flutter/material.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class ExpectFailureForm extends TestStepForm {
  const ExpectFailureForm();

  @override
  bool get supportsMinified => true;

  @override
  TranslationEntry get title =>
      TestFlowControlTranslations.atf_flow_title_expect_failure;

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
            TestFlowControlTranslations.atf_flow_help_expect_failure,
            minify: minify,
          ),
        buildValuesSection(
          context,
          [
            TestStepPicker(
              label: translator.translate(
                TestFlowControlTranslations.atf_flow_form_step,
              ),
              onStepChanged: (step) => values['step'] = step?.toJson(),
              step: TestStep.fromDynamicNullable(values!['step']),
            ),
          ],
          minify: minify,
        ),
      ],
    );
  }
}
