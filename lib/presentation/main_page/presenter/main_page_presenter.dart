import 'package:demo_dua_prooject/core/base/base_presenter.dart';
import 'package:demo_dua_prooject/core/utility/utility.dart';
import 'package:demo_dua_prooject/presentation/main_page/presenter/main_page_ui_state.dart';
import 'package:flutter/material.dart';

class MainPagePresenter extends BasePresenter<MainPageUiState> {
  late final GlobalKey<ScaffoldState> mainScaffoldKey =
      GlobalKey<ScaffoldState>();

  final Obs<MainPageUiState> uiState = Obs(MainPageUiState.empty());

  MainPageUiState get currentUiState => uiState.value;

  void changeTabIndex(int index) {
    uiState.value = currentUiState.copyWith(currentIndex: index);
  }

  void closeDrawer() {
    mainScaffoldKey.currentState?.closeDrawer();
  }

  @override
  Future<void> addUserMessage(String message) {
    return showMessage(message: message);
  }

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = currentUiState.copyWith(isLoading: loading);
  }
}
