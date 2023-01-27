import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'application.dart';

void main() async {
  final log = Logger("Application");
  WidgetsFlutterBinding.ensureInitialized();
  await runZonedGuarded(
    () async => runApp(const Application()),
    (error, stack) => log.severe("An error encountered", error, stack),
  );
}
