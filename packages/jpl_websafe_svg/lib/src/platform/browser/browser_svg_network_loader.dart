import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jpl_websafe_svg/src/platform/browser/browser_svg_loader.dart';
import 'package:meta/meta.dart';

@immutable
class BrowserSvgNetworkLoader implements BrowserSvgLoader {
  const BrowserSvgNetworkLoader({
    this.headers,
    required this.url,
  });

  final Map<String, String>? headers;
  final String url;

  @override
  bool operator ==(Object other) =>
      other is BrowserSvgNetworkLoader &&
      other.url == url &&
      other.headers == headers;

  @override
  int get hashCode => '$url|$headers'.hashCode;

  @override
  Future<String> load() async {
    final response = await http.get(Uri.parse(url), headers: headers);

    return utf8.decode(response.bodyBytes);
  }
}
