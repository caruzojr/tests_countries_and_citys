import '../../../../core/entities/entities.dart';

abstract class GetCitiesListDatasource {
  Future<List<CountryEntity>> call(String selectedCountry, String selectedState);
}
