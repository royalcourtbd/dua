import 'package:demo_dua_prooject/data/data_sources/local_data_source/dua_category_local_data_source.dart';
import 'package:demo_dua_prooject/data/services/cache_data.dart';
import 'package:demo_dua_prooject/domain/entities/dua_category_entity.dart';
import 'package:demo_dua_prooject/domain/repository/dua_category_repository.dart';

class DuaCategoryRepositoryImpl extends DuaCategoryRepository {
  final DuaCategoryLocalDataSource _duaCategoryLocalDataSource;

  DuaCategoryRepositoryImpl(this._duaCategoryLocalDataSource);
  @override
  Future<List<DuaCategoryEntity>> getAllCategories() async {
    if (CacheData.duaCategoryList.isEmpty) {
      final List<DuaCategoryEntity> duaCategoryList =
          await _duaCategoryLocalDataSource.getAllCategories();

      CacheData.duaCategoryList = duaCategoryList;
    }
    return CacheData.duaCategoryList;
  }
}
