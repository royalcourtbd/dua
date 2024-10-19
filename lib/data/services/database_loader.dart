import 'dart:io';

import 'package:demo_dua_prooject/core/utility/trial_utility.dart';
import 'package:demo_dua_prooject/core/utility/utility.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

const String _dbPath = "assets/db";
const String _dbName = "dua_main.db";
const String _dbAssetPath = "$_dbPath/$_dbName";

LazyDatabase loadDatabase() => LazyDatabase(() => _openConnection);

Future<bool> isDatabaseFileFound() async {
  final bool? fileFound = await catchAndReturnFuture(() async {
    final File file = await getDatabaseFile(fileName: _dbName);
    final bool fileExists = await file.exists();
    if (!fileExists) return false;
    return true;
  });
  return fileFound ?? false;
}

Future<void> deleteDatabaseFile() async {
  await catchFutureOrVoid(() async {
    final File file = await getDatabaseFile(fileName: _dbName);
    final bool fileExists = await file.exists();
    if (fileExists) await file.delete();
  });
}

Future<QueryExecutor> get _openConnection async {
  final File file = await getDatabaseFile(fileName: _dbName);
  await moveDatabaseFromAssetToInternal(assetPath: _dbAssetPath, file: file);
  return NativeDatabase.createInBackground(file);
}
