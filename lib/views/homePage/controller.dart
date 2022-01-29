// Created by Adipt on 29/01/2022

part of 'view.dart';

final _stateProvider =
    StateNotifierProvider.autoDispose<_StateController, _State>((ref) {
  final stateController = _StateController();

  return stateController;
});

class _State {
  final bool isLoading;
  final String gstNumber;
  final bool hasError;

  _State({
    required this.isLoading,
    required this.gstNumber,
    required this.hasError,
  });

  _State.initial()
      : this(
          isLoading: false,
          gstNumber: '',
          hasError: false,
        );

  _State copyWith({
    bool? isLoading,
    String? gstNumber,
    bool? hasError,
  }) {
    return _State(
      isLoading: isLoading ?? this.isLoading,
      gstNumber: gstNumber ?? this.gstNumber,
      hasError: hasError ?? this.hasError,
    );
  }
}

class _StateController extends StateNotifier<_State> {
  _StateController() : super(_State.initial());

  void onGstNumberChanged(String number) {
    state = state.copyWith(
      gstNumber: number,
    );
  }

  bool textFieldHasError() {
    return state.gstNumber.isEmpty;
  }

  Future<GstProfile?> fetchGstInfo() async {
    state = state.copyWith(
      hasError: false,
    );
    if (textFieldHasError()) {
      state = state.copyWith(
        hasError: true,
      );
      return null;
    } else {
      state = state.copyWith(
        isLoading: true,
      );
      try {
        var dio = Dio();
        dio.options.headers = {
          'x-rapidapi-host': ApiHelper.API_HOST,
          'x-rapidapi-key': ApiHelper.API_KEY,
        };
        Response response = await dio
            .get(ApiHelper.BASE_URL + ApiHelper.gstProfile + state.gstNumber);
        final gstProfile = GstProfile.fromJson(response.data);
        Fluttertoast.showToast(msg: 'Fetched Successfully.');
        return gstProfile;
      } catch (e) {
        Fluttertoast.showToast(msg: 'Some Error Occured');
        return null;
      } finally {
        state = state.copyWith(
          isLoading: false,
        );
      }
    }
  }
}
