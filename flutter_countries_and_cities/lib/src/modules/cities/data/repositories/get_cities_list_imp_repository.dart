import 'package:flutter_countries_and_cities/src/core/entities/country_entity.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class GetCitiesListImpRepository implements GetCitiesListRepository {
  final GetCitiesListDatasource citiesListDatasource;

  GetCitiesListImpRepository(this.citiesListDatasource);

  @override
  Future<List<CountryEntity>> call(String selectedCountry, String selectedState) async {
    return await citiesListDatasource(selectedCountry, selectedState);
  }
}
