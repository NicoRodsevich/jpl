import 'package:jpl_dynamic_service/jpl_dynamic_service.dart';
import 'package:jpl_json_class/jpl_json_class.dart';

class ServiceContext extends JsonClass {
  ServiceContext({
    required this.entry,
    required this.registry,
    required this.request,
    required this.response,
    required this.variables,
  });

  final ServiceEntry entry;
  final DynamicServiceRegistry registry;
  final ServiceRequest request;
  final ServiceResponse response;
  final Map<String, dynamic> variables;

  @override
  Map<String, dynamic> toJson() => {
        'request': request.toJson(),
        'response': response.toJson(),
        'variables': variables,
      };
}
