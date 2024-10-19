import 'package:demo_dua_prooject/core/base/base_ui_state.dart';
import 'package:demo_dua_prooject/domain/entities/dua_category_entity.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required super.isLoading,
    required super.userMessage,
    required this.duaCategoryList,
  });

  factory HomeUiState.empty() {
    return const HomeUiState(
      userMessage: null,
      isLoading: true,
      duaCategoryList: [],
    );
  }

  final List<DuaCategoryEntity> duaCategoryList;

  @override
  List<Object?> get props => [
        userMessage,
        isLoading,
        duaCategoryList,
      ];

  HomeUiState copyWith({
    String? errorMessage,
    bool? isLoading,
    List<DuaCategoryEntity>? duaCategoryList,
  }) {
    return HomeUiState(
      userMessage: errorMessage ?? userMessage,
      isLoading: isLoading ?? this.isLoading,
      duaCategoryList: duaCategoryList ?? this.duaCategoryList,
    );
  }
}
