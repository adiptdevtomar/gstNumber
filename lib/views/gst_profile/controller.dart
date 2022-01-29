// Created by Adipt on 28/01/2022

part of 'view.dart';

final _stateProvider =
    StateNotifierProvider.autoDispose<_StateController, _State>((ref) {
  final stateController = _StateController();

  return stateController;
});

class _State {
  final bool isLoading;
  final String gstNumber;

  _State({
    required this.isLoading,
    required this.gstNumber,
  });

  _State.initial()
      : this(
          isLoading: false,
          gstNumber: '',
        );

  _State copyWith({
    bool? isLoading,
    String? gstNumber,
  }) {
    return _State(
      isLoading: isLoading ?? this.isLoading,
      gstNumber: gstNumber ?? this.gstNumber,
    );
  }
}

class _StateController extends StateNotifier<_State> {
  _StateController() : super(_State.initial());
}
