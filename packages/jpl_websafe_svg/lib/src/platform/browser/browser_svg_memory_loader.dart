import 'dart:convert';
import 'dart:typed_data';

import 'package:jpl_websafe_svg/src/platform/browser/browser_svg_loader.dart';
import 'package:meta/meta.dart';

@immutable
class BrowserSvgMemoryLoader implements BrowserSvgLoader {
  const BrowserSvgMemoryLoader({
    required this.bytes,
  });

  final Uint8List bytes;

  @override
  bool operator ==(Object other) =>
      other is BrowserSvgMemoryLoader && other.bytes == bytes;

  @override
  int get hashCode => bytes.hashCode;

  @override
  Future<String> load() => Future.value(utf8.decode(bytes));
}
