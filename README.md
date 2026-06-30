# jpl — Jeff Peiffer Legacy

Monorepo que mantiene vivos (forks bumpeados a las últimas versiones de Dart/Flutter) los
**70 paquetes** de la organización [`peiffer-innovations`](https://github.com/peiffer-innovations),
**archivada por completo** (read-only) por su autor Jeff Peiffer.

**`jpl_` = Jeff Peiffer Legacy.** Cada paquete conserva su licencia original; todo el crédito
del diseño e implementación original es de Jeff Peiffer. Estos forks solo lo actualizan y mantienen.

## Estructura
- `packages/jpl_*` — un directorio por paquete forkeado.
- Build local sin publicar: cada paquete usa `pubspec_overrides.yaml` con `path:` al cierre
  transitivo de sus dependencias `jpl_`. Las dependencias externas resuelven contra pub.dev.
- **No hay workspace global** a propósito: el conjunto completo es irreconciliable en una sola
  resolución (p.ej. plugins Firebase del ATF clavados a versiones antiguas vs. paquetes modernos).
  El build y la publicación se hacen **por paquete, en orden topológico**.

## Orden de build / publicación (topológico)
Los paquetes con codegen (`build_runner`) deben generarse en este orden.

### Publicables (64)
1. `jpl_actions_flutter_deploy_pages`
2. `jpl_actions_flutter_validate`
3. `jpl_child_builder`
4. `jpl_dart_version_autotag`
5. `jpl_dynamic_widget_annotation`
6. `jpl_execution_timer`
7. `jpl_flexible_table`
8. `jpl_font_awesome_flutter_named`
9. `jpl_form_floating_action_button`
10. `jpl_grpc_googleapis`
11. `jpl_ionicons_named`
12. `jpl_json_class`
13. `jpl_json_schema2`
14. `jpl_json_theme_annotation`
15. `jpl_launch_args`
16. `jpl_license_checker2`
17. `jpl_material_icons_named`
18. `jpl_rest_client`
19. `jpl_rest_pubsub`
20. `jpl_screen_streamer`
21. `jpl_web_socket_channel_connect`
22. `jpl_websafe_network_image`
23. `jpl_websafe_platform`
24. `jpl_websafe_svg`
25. `jpl_yaon`
26. `jpl_grpc_protobuf_convert`
27. `jpl_automated_testing_framework_models`
28. `jpl_dart_dependency_updater`
29. `jpl_form_validation`
30. `jpl_json_conditional`
31. `jpl_json_theme_codegen`
32. `jpl_static_translations`
33. `jpl_template_expressions`
34. `jpl_grpc_pubsub`
35. `jpl_automated_testing_framework_driver_websocket`
36. `jpl_automated_testing_framework_server_websocket`
37. `jpl_json_theme`
38. `jpl_automated_testing_framework_plugin_github`
39. `jpl_dynamic_service`
40. `jpl_automated_testing_framework`
41. `jpl_json_dynamic_widget_codegen`
42. `jpl_automated_testing_framework_example`
43. `jpl_automated_testing_framework_plugin_connectivity`
44. `jpl_automated_testing_framework_plugin_desktop`
45. `jpl_automated_testing_framework_plugin_firebase_storage`
46. `jpl_automated_testing_framework_plugin_flow_control`
47. `jpl_automated_testing_framework_plugin_gps`
48. `jpl_automated_testing_framework_plugin_images`
49. `jpl_automated_testing_framework_plugin_logging`
50. `jpl_automated_testing_framework_plugin_strings`
51. `jpl_json_dynamic_widget`
52. `jpl_automated_testing_framework_plugin_firebase`
53. `jpl_automated_testing_framework_plugin_firestore`
54. `jpl_json_dynamic_widget_plugin_charts_flutter`
55. `jpl_json_dynamic_widget_plugin_components`
56. `jpl_json_dynamic_widget_plugin_expressions`
57. `jpl_json_dynamic_widget_plugin_font_awesome`
58. `jpl_json_dynamic_widget_plugin_ionicons`
59. `jpl_json_dynamic_widget_plugin_js`
60. `jpl_json_dynamic_widget_plugin_lottie`
61. `jpl_json_dynamic_widget_plugin_markdown`
62. `jpl_json_dynamic_widget_plugin_material_icons`
63. `jpl_json_dynamic_widget_plugin_rive`
64. `jpl_json_dynamic_widget_plugin_svg`

### No se publican (6 — apps demo / legacy)
- `jpl_example_go_router`
- `jpl_json_dynamic_widget_annotations`
- `jpl_putnzonthemap`
- `jpl_three_x_plus_1`
- `jpl_community_parade`
- `jpl_json_dynamic_widget_builder`
