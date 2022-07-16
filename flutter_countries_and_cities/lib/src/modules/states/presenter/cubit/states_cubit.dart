import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/usecases.dart';

part 'states_state.dart';

class StatesCubit extends Cubit<StatesState> {
  final GetStatesListUsecase getStatesListUsecase;
  final String selectedCountry;

  StatesCubit(
    this.getStatesListUsecase, {
    required this.selectedCountry,
  }) : super(StatesInitial()) {
    _getStatesList();
  }

  _getStatesList() async {
    emit(StatesInProgress());

    try {
      final response = await getStatesListUsecase(selectedCountry);
      emit(StatesSuccess(
        selectedCountry: selectedCountry,
        dataStates: response,
      ));
      return response;
    } catch (error) {
      print(error);
    }
  }
}
