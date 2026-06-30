import 'package:build/build.dart';
import 'package:jpl_json_theme_codegen/jpl_json_theme_codegen.dart';
import 'package:source_gen/source_gen.dart';

Builder codecLibrary(BuilderOptions options) =>
    SharedPartBuilder([CodecLibraryBuilder()], 'codec');
