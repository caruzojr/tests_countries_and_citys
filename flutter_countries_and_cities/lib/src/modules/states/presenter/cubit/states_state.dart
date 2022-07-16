part of 'states_cubit.dart';

abstract class StatesState extends Equatable {
  @override
  List<Object> get props => [];
}

class StatesInitial extends StatesState {}

class StatesInProgress extends StatesState {}

class StatesSuccess extends StatesState {
  final String selectedCountry;
  final List<String> dataStates;

  StatesSuccess({
    required this.selectedCountry,
    required this.dataStates,
  });

  @override
  List<Object> get props => [
        selectedCountry,
        dataStates,
      ];
}

class StatesFailure extends StatesState {}
