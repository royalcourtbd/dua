import 'package:demo_dua_prooject/core/di/service_locator.dart';
import 'package:demo_dua_prooject/core/external_libs/presentable_widget_builder.dart';
import 'package:demo_dua_prooject/core/utility/text_utility.dart';
import 'package:demo_dua_prooject/domain/entities/dua_category_entity.dart';
import 'package:demo_dua_prooject/presentation/home/presenter/home_presenter.dart';
import 'package:demo_dua_prooject/presentation/home/presenter/home_ui_state.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePresenter homePresente = locate<HomePresenter>();

  @override
  Widget build(BuildContext context) {
    return PresentableWidgetBuilder(
      presenter: homePresente,
      builder: () {
        final HomeUiState uiState = homePresente.currentUiState;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Dua And Ruqyah'),
          ),
          body: ListView.builder(
            itemCount: homePresente.currentUiState.duaCategoryList.length,
            itemBuilder: (context, index) {
              final DuaCategoryEntity duaCatInfo =
                  uiState.duaCategoryList[index];
              return ListTile(
                title: Text(duaCatInfo.catNameBn),
                subtitle: Text(
                    'সাবক্যাটাগরি: ${translateNumberToBanglaString(duaCatInfo.numberOfSubcat)}'),
                trailing: Text('${duaCatInfo.numberOfDua}\nদোয়া',
                    textAlign: TextAlign.center),
                onTap: () {
                  // homePresente.onCategorySelected(index);
                },
              );
            },
          ),
        );
      },
    );
  }
}
