import 'package:equatable/equatable.dart';

class CountryEntity extends Equatable {
  final String city;
  final String country;
  final String state;
  final int id;

  const CountryEntity({
    required this.city,
    required this.country,
    required this.state,
    required this.id,
  });

  @override
  List<Object?> get props => [
        city,
        country,
        state,
        id,
      ];
}
