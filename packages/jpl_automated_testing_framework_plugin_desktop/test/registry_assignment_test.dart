import 'package:flutter_test/flutter_test.dart';
import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:jpl_automated_testing_framework_plugin_desktop/jpl_automated_testing_framework_plugin_desktop.dart';

void main() {
  test('assert_window_size', () {
    TestDesktopHelper.registerTestSteps();
    final availStep = TestStepRegistry.instance.getAvailableTestStep(
      'assert_window_size',
    )!;

    expect(availStep.form.runtimeType, AssertWindowSizeForm);
    expect(
      availStep.help,
      TestDesktopTranslations.atf_desktop_help_assert_window_size,
    );
    expect(availStep.id, 'assert_window_size');
    expect(
      availStep.title,
      TestDesktopTranslations.atf_desktop_title_assert_window_size,
    );
    expect(availStep.type, null);
    expect(availStep.widgetless, true);
  });

  test('set_window_size', () {
    TestDesktopHelper.registerTestSteps();
    final availStep = TestStepRegistry.instance.getAvailableTestStep(
      'set_window_size',
    )!;

    expect(availStep.form.runtimeType, SetWindowSizeForm);
    expect(
      availStep.help,
      TestDesktopTranslations.atf_desktop_help_set_window_size,
    );
    expect(availStep.id, 'set_window_size');
    expect(
      availStep.title,
      TestDesktopTranslations.atf_desktop_title_set_window_size,
    );
    expect(availStep.type, null);
    expect(availStep.widgetless, true);
  });
}
