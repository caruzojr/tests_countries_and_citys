import '../../../../core/entities/entities.dart';

abstract class GetStatesListDatasource {
  Future<List<CountryEntity>> call(String selectedCountry);
}
