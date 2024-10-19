import 'dart:async';
import 'package:demo_dua_prooject/core/base/base_presenter.dart';
import 'package:demo_dua_prooject/core/utility/utility.dart';
import 'package:demo_dua_prooject/data/services/cache_data.dart';
import 'package:demo_dua_prooject/domain/use_case/get_all_dua_category_use_case.dart';
import 'package:demo_dua_prooject/presentation/home/presenter/home_ui_state.dart';

class HomePresenter extends BasePresenter<HomeUiState> {
  final GetAllDuaCategoryUseCase _getAllDuaCategoryUseCase;

  HomePresenter(this._getAllDuaCategoryUseCase);

  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());

  HomeUiState get currentUiState => uiState.value;

  @override
  Future<void> onInit() async {
    await fetchHomePageData();
    super.onInit();
  }

  Future<void> fetchHomePageData() async {
    await toggleLoading(loading: true);
    await _getCategories();
    await toggleLoading(loading: false);
  }

  Future<void> _getCategories() async {
    await _getAllDuaCategoryUseCase.execute();

    uiState.value =
        currentUiState.copyWith(duaCategoryList: CacheData.duaCategoryList);
  }

  @override
  Future<void> addUserMessage(String message) async =>
      await showMessage(message: message);

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = currentUiState.copyWith(isLoading: loading);
  }
}
