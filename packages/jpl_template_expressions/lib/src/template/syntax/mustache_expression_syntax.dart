import 'package:jpl_template_expressions/jpl_template_expressions.dart';

/// Syntax that begins with a double curley brace, `{{` and ends with a double
/// closing curley brace, `}}`.
class MustacheExpressionSyntax extends ExpressionSyntax {
  const MustacheExpressionSyntax()
      : super(
          endToken: '}}',
          startToken: '{{',
        );
}
