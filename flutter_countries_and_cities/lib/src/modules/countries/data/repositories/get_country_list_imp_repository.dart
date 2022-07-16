import 'package:flutter_countries_and_cities/src/modules/countries/data/datasources/get_country_list_datasource.dart';

import '../../../../core/entities/entities.dart';
import '../../domain/repositories/repositories.dart';

class GetCountryListImpRepository implements GetCountryListRepository {
  final GetCountryListDatasource getCountryListDatasource;

  GetCountryListImpRepository(this.getCountryListDatasource);

  @override
  Future<List<CountryEntity>> call() async {
    return await getCountryListDatasource();
  }
}
