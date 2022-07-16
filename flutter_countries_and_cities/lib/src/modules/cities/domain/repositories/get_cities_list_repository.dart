import '../../../../core/entities/entities.dart';

abstract class GetCitiesListRepository {
  Future<List<CountryEntity>> call(String selectedCountry, String selectedState);
}
