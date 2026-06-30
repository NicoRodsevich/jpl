import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_flow_control/jpl_automated_testing_framework_plugin_flow_control.dart';
import 'package:flutter/material.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class FailForm extends TestStepForm {
  const FailForm();

  @override
  bool get supportsMinified => true;

  @override
  TranslationEntry get title => TestFlowControlTranslations.atf_flow_title_fail;

  @override
  Widget buildForm(
    BuildContext context,
    Map<String, dynamic>? values, {
    bool minify = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (minify != true)
          buildHelpSection(
            context,
            TestFlowControlTranslations.atf_flow_help_fail,
            minify: minify,
          ),
        buildValuesSection(
          context,
          [
            buildEditText(
              context: context,
              id: 'message',
              label: TestFlowControlTranslations.atf_flow_form_message,
              values: values!,
            ),
          ],
          minify: minify,
        ),
      ],
    );
  }
}
