import 'package:jpl_dynamic_service/jpl_dynamic_service.dart';

class AlwaysCriteriaEvaluator extends CriteriaEvaluator {
  static const kType = 'always';

  @override
  Future<ServiceContext?> evaluate({
    required ServiceEntry entry,
    required DynamicServiceRegistry registry,
    required ServiceRequest request,
  }) async =>
      ServiceContext(
        entry: entry,
        registry: registry,
        request: request,
        response: ServiceResponse(),
        variables: {'request': request.toJson()},
      );
}
