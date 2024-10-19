import 'dart:io';
import 'package:demo_dua_prooject/core/di/service_locator.dart';

import 'package:demo_dua_prooject/core/utility/trial_utility.dart';
import 'package:demo_dua_prooject/presentation/muslim_dua.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

void main() async {
  await _init();
  runApp(const MuslimDua());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator.setUp();
  // await _setMaxRefreshRate();
}

Future<void> _setMaxRefreshRate() async {
  if (!Platform.isAndroid) return;
  await catchFutureOrVoid(() async => FlutterDisplayMode.setHighRefreshRate());
}
