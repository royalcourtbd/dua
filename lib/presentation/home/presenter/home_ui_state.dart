import 'package:demo_dua_prooject/core/base/base_ui_state.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required super.isLoading,
    required super.userMessage,
  });

  factory HomeUiState.empty() {
    return const HomeUiState(
      userMessage: null,
      isLoading: true,
    );
  }

  @override
  List<Object?> get props => [
        userMessage,
        isLoading,
      ];

  HomeUiState copyWith({
    String? errorMessage,
    bool? isLoading,
    bool? isFirstTime,
  }) {
    return HomeUiState(
      userMessage: errorMessage ?? userMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
