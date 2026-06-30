import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_flow_control/jpl_automated_testing_framework_plugin_flow_control.dart';
import 'package:flutter/material.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class ClearVariablesForm extends TestStepForm {
  const ClearVariablesForm();

  @override
  bool get supportsMinified => false;

  @override
  TranslationEntry get title =>
      TestFlowControlTranslations.atf_flow_title_clear_variables;

  @override
  Widget buildForm(
    BuildContext context,
    Map<String, dynamic>? values, {
    bool minify = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        buildHelpSection(
          context,
          TestFlowControlTranslations.atf_flow_help_clear_variables,
          minify: minify,
        ),
      ],
    );
  }
}
