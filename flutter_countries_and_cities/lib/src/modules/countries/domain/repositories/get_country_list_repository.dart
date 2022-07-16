import '../../../../core/entities/entities.dart';

abstract class GetCountryListRepository {
  Future<List<CountryEntity>> call();
}
