part of './countries_cubit.dart';

abstract class CountriesState extends Equatable {
  @override
  List<Object> get props => [];
}

class CountriesInitial extends CountriesState {}

class CountriesInProgress extends CountriesState {}

class CountriesSuccess extends CountriesState {
  final List<String> dataCountries;

  CountriesSuccess({required this.dataCountries});

  @override
  List<Object> get props => [dataCountries];
}

class CountriesFailure extends CountriesState {}
