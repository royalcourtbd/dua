import 'package:demo_dua_prooject/core/config/dua_screen.dart';
import 'package:demo_dua_prooject/core/di/service_locator.dart';
import 'package:demo_dua_prooject/core/external_libs/presentable_widget_builder.dart';

import 'package:demo_dua_prooject/core/external_libs/salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:demo_dua_prooject/core/static/svg_path.dart';
import 'package:demo_dua_prooject/core/static/ui_const.dart';
import 'package:demo_dua_prooject/core/utility/color_utility.dart';
import 'package:demo_dua_prooject/core/utility/ui_helper.dart';
import 'package:demo_dua_prooject/core/utility/utility.dart';
import 'package:demo_dua_prooject/presentation/home/ui/home_page.dart';

import 'package:demo_dua_prooject/presentation/main_page/presenter/main_page_presenter.dart';
import 'package:demo_dua_prooject/presentation/main_page/presenter/main_page_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final MainPagePresenter _mainPagePresenter = locate<MainPagePresenter>();

  final List<Widget> _pages = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return PopScope(
      onPopInvokedWithResult: (bool isInvoked, dynamic result) {
        if (_mainPagePresenter.currentUiState.currentIndex != 0) {
          _mainPagePresenter.changeTabIndex(0);
        }
      },
      canPop: false,
      child: UpgradeAppDialogContainer(
        child: PresentableWidgetBuilder(
          presenter: _mainPagePresenter,
          builder: () {
            final MainPageUiState uiState = _mainPagePresenter.currentUiState;
            return Scaffold(
              key: _mainPagePresenter.mainScaffoldKey,
              resizeToAvoidBottomInset: false,
              body: _pages[uiState.currentIndex],
              bottomNavigationBar: Container(
                padding: isMobile
                    ? padding8
                    : EdgeInsets.symmetric(horizontal: DuaScreen.width * 0.2),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(twentyPx),
                  ),
                ),
                child: SalomonBottomBar(
                  currentIndex: uiState.currentIndex,
                  onTap: (int index) =>
                      _mainPagePresenter.changeTabIndex(index),
                  selectedColorOpacity: 0.22,
                  selectedItemColor: context.color.navBgAc,
                  items: _buildBottomBarItems(context, uiState.currentIndex),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<SalomonBottomBarItem> _buildBottomBarItems(
    BuildContext context, int currentIndex) {
  final List<String> iconPaths = [
    SvgPath.icHomeActive,
    SvgPath.icSubjectWiseActive,
    SvgPath.icCollectionActive,
    SvgPath.icMemorizeActive,
    SvgPath.icSettings,
  ];

  return List.generate(iconPaths.length, (int i) {
    final bool isSelected = i == currentIndex;
    final Color selectedColor =
        isSelected ? context.color.primaryColor : context.color.navInactive;

    return SalomonBottomBarItem(
      icon: SvgPicture.asset(
        iconPaths[i],
        colorFilter: buildColorFilter(selectedColor),
      ),
    );
  });
}
