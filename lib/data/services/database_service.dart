import 'package:demo_dua_prooject/data/services/database/table/dua_category_table.dart';
import 'package:demo_dua_prooject/data/services/database/table/sub_category.dart';
import 'package:demo_dua_prooject/data/services/database_loader.dart';
import 'package:drift/drift.dart';

part 'database_service.g.dart';

@DriftDatabase(tables: [
  Category,
  SubCategory,
])
class DuasDatabase extends _$DuasDatabase {
  DuasDatabase({QueryExecutor? queryExecutor})
      : super(queryExecutor ?? loadDatabase());

  @override
  int get schemaVersion => 1;

  Future<List<CategoryData>> getAllCategories() async {
    return select(category).get();
  }
}
