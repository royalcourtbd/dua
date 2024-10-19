import 'package:demo_dua_prooject/core/base/base_use_case.dart';

import 'package:demo_dua_prooject/domain/repository/dua_category_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllDuaCategoryUseCase extends BaseUseCase {
  GetAllDuaCategoryUseCase(
      super.errorMessageHandler, this._duaCategoryRepository);

  final DuaCategoryRepository _duaCategoryRepository;

  Future<Either<String, void>> execute() async {
    return mapResultToEither(_duaCategoryRepository.getAllCategories);
  }
}
