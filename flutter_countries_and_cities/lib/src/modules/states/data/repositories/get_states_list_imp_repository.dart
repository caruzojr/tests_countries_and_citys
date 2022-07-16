import 'package:flutter_countries_and_cities/src/core/entities/country_entity.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class GetStatesListImpRepository implements GetStatesListRepository {
  final GetStatesListDatasource statesListDatasource;

  GetStatesListImpRepository(this.statesListDatasource);

  @override
  Future<List<CountryEntity>> call(String selectedCountry) async {
    return await statesListDatasource(selectedCountry);
  }
}
