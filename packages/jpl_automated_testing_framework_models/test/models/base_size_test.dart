import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';
import 'package:test/test.dart';

void main() {
  test('BaseSize', () {
    final baseSize = BaseSize(1.0, 2.0);
    expect(baseSize.height, 2.0);
    expect(baseSize.width, 1.0);
  });
}
