import 'package:demo_dua_prooject/data/services/database_service.dart';
import 'package:demo_dua_prooject/domain/entities/dua_category_entity.dart';

class DuaCategoryLocalDataSource {
  final DuasDatabase _duasDatabase;
  DuaCategoryLocalDataSource(this._duasDatabase);

  Future<List<DuaCategoryEntity>> getAllCategories() async {
    final List<CategoryData> duaCategoryTableDataList =
        await _duasDatabase.getAllCategories();

    return duaCategoryTableDataList
        .map((CategoryData e) => DuaCategoryEntity(
              id: e.id,
              catId: e.catId,
              catNameBn: e.catNameBn,
              catNameEn: e.catNameEn,
              numberOfSubcat: e.noOfSubcat,
              numberOfDua: e.noOfDua,
              catIcon: e.catIcon,
            ))
        .toList();
  }
}
