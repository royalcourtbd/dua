import 'dart:async';

import 'package:demo_dua_prooject/core/base/base_presenter.dart';
import 'package:demo_dua_prooject/core/di/service_locator.dart';
import 'package:demo_dua_prooject/core/utility/utility.dart';
import 'package:demo_dua_prooject/presentation/home/presenter/home_ui_state.dart';

import 'package:demo_dua_prooject/presentation/main_page/presenter/main_page_presenter.dart';

class HomePresenter extends BasePresenter<HomeUiState> {
  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());
  late final MainPagePresenter drawerPresenter = locate<MainPagePresenter>();

  HomeUiState get currentUiState => uiState.value;

  @override
  Future<void> addUserMessage(String message) async =>
      await showMessage(message: message);

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = currentUiState.copyWith(isLoading: loading);
  }
}
