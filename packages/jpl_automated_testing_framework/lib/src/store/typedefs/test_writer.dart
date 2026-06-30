import 'package:jpl_automated_testing_framework/jpl_automated_testing_framework.dart';
import 'package:flutter/material.dart';

typedef TestWriter = Future<bool> Function(BuildContext context, Test test);
