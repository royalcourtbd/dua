import 'package:drift/drift.dart';

class SubCategory extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get catId => integer()();
  IntColumn get subcatId => integer()();
  TextColumn get subcatNameBn => text()();
  TextColumn get subcatNameEn => text()();
  IntColumn get noOfDua => integer()();
}
