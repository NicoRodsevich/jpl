import 'package:jpl_websafe_svg/src/platform/browser/browser_svg_loader.dart';
import 'package:meta/meta.dart';

@immutable
class BrowserSvgStringLoader implements BrowserSvgLoader {
  const BrowserSvgStringLoader({
    required this.string,
  });

  final String string;

  @override
  bool operator ==(Object other) =>
      other is BrowserSvgStringLoader && other.string == string;

  @override
  int get hashCode => string.hashCode;

  @override
  Future<String> load() => Future.value(string);
}
