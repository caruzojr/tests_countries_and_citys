import '../../../../core/entities/entities.dart';

abstract class GetStatesListRepository {
  Future<List<CountryEntity>> call(String selectedCountry);
}
