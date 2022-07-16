import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/usecases.dart';

part './cities_state.dart';

class CitiesCubit extends Cubit<CitiesState> {
  final GetCitiesListUsecase getCitiesListUsecase;
  final String selectedCountry;
  final String selectedState;

  CitiesCubit(
    this.getCitiesListUsecase, {
    required this.selectedCountry,
    required this.selectedState,
  }) : super(CitiesInitial()) {
    _getCitiesList();
  }

  _getCitiesList() async {
    emit(CitiesInProgress());

    try {
      final response = await getCitiesListUsecase(selectedCountry, selectedState);
      emit(CitiesSuccess(
        selectedCountry: selectedCountry,
        selectedState: selectedState,
        dataCities: response,
      ));
    } catch (error) {
      print(error);
    }
  }
}
