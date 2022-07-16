import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_countries_and_cities/src/modules/countries/domain/usecases/usecases.dart';

part './countries_state.dart';

class CountriesCubit extends Cubit<CountriesState> {
  final GetCountryListUsecase getCountryListUsecase;

  CountriesCubit(this.getCountryListUsecase) : super(CountriesInitial()) {
    _getCountryList();
  }

  _getCountryList() async {
    emit(CountriesInProgress());

    try {
      final response = await getCountryListUsecase();
      emit(CountriesSuccess(dataCountries: response));
    } catch (error) {
      print(error);
    }
  }
}
