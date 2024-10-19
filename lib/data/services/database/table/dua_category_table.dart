import 'package:drift/drift.dart';

class Category extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get catId => integer()();
  TextColumn get catNameBn => text()();
  TextColumn get catNameEn => text()();
  IntColumn get noOfSubcat => integer()();
  IntColumn get noOfDua => integer()();
  TextColumn get catIcon => text()();
}
