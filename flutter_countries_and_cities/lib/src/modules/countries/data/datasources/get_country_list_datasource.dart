import '../../../../core/entities/entities.dart';

abstract class GetCountryListDatasource {
  Future<List<CountryEntity>> call();
}
