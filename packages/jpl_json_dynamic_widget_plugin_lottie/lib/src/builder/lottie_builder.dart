import 'dart:convert';

import 'package:jpl_json_dynamic_widget/jpl_json_dynamic_widget.dart';
import 'package:lottie/lottie.dart';

part 'lottie_builder.g.dart';

/// Creates a SVG via the [Lottie] widget based on the JSON structure.
@jsonWidget
abstract class _LottieBuilder extends JsonWidgetBuilder {
  const _LottieBuilder({
    super.args,
  });

  @override
  _Lottie buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class _Lottie extends StatelessWidget {
  const _Lottie({
    this.addRepaintBounary,
    this.alignment,
    this.animate,
    this.asset,
    this.fit,
    this.height,
    this.lottie,
    this.options,
    this.package,
    this.repeat,
    this.reverse,
    this.url,
    this.width,
  });

  final bool? addRepaintBounary;
  final Alignment? alignment;
  final bool? animate;
  final String? asset;
  final BoxFit? fit;
  final double? height;
  final String? lottie;
  final LottieOptions? options;
  final String? package;
  final bool? repeat;
  final bool? reverse;
  final String? url;
  final double? width;

  /// Builds the widget from the give [data].
  @override
  Widget build(BuildContext context) {
    return asset != null
        ? Lottie.asset(
            asset!,
            addRepaintBoundary: addRepaintBounary,
            alignment: alignment ?? Alignment.center,
            animate: animate,
            fit: fit ?? BoxFit.contain,
            height: height,
            package: package,
            options: options,
            repeat: repeat,
            reverse: reverse,
            width: width,
          )
        : lottie != null
            ? Lottie.memory(
                base64.decode(lottie!),
                addRepaintBoundary: addRepaintBounary,
                alignment: alignment ?? Alignment.center,
                animate: animate,
                fit: fit ?? BoxFit.contain,
                height: height,
                options: options,
                repeat: repeat,
                reverse: reverse,
                width: width,
              )
            : Lottie.network(
                url!,
                addRepaintBoundary: addRepaintBounary,
                alignment: alignment ?? Alignment.center,
                animate: animate,
                fit: fit ?? BoxFit.contain,
                height: height,
                options: options,
                repeat: repeat,
                reverse: reverse,
                width: width,
              );
  }
}
