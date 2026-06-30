import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_strings/jpl_automated_testing_framework_plugin_strings.dart';
import 'package:flutter/material.dart';
import 'package:jpl_form_validation/jpl_form_validation.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class SubstringVariableForm extends TestStepForm {
  const SubstringVariableForm();

  @override
  bool get supportsMinified => true;

  @override
  TranslationEntry get title =>
      TestStringsTranslations.atf_strings_title_substring_variable;

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
            TestStringsTranslations.atf_strings_help_substring_variable,
            minify: minify,
          ),
        buildValuesSection(
          context,
          [
            buildEditText(
              context: context,
              id: 'input',
              label: TestStringsTranslations.atf_strings_form_input,
              validators: [
                RequiredValidator(),
              ],
              values: values!,
            ),
            const SizedBox(height: 16.0),
            buildEditText(
              context: context,
              id: 'regEx',
              label: TestStringsTranslations.atf_strings_form_reg_ex,
              values: values,
            ),
            const SizedBox(height: 16.0),
            buildEditText(
              context: context,
              id: 'variableName',
              label: TestStepTranslations.atf_form_variable_name,
              values: values,
            ),
          ],
          minify: minify,
        ),
      ],
    );
  }
}
