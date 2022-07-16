part of 'cities_cubit.dart';

abstract class CitiesState extends Equatable {
  @override
  List<Object> get props => [];
}

class CitiesInitial extends CitiesState {}

class CitiesInProgress extends CitiesState {}

class CitiesSuccess extends CitiesState {
  final String selectedCountry;
  final String selectedState;
  final List<String> dataCities;

  CitiesSuccess({
    required this.selectedCountry,
    required this.selectedState,
    required this.dataCities,
  });

  @override
  List<Object> get props => [
        selectedCountry,
        selectedState,
        dataCities,
      ];
}

class CitiesFailure extends CitiesState {}
