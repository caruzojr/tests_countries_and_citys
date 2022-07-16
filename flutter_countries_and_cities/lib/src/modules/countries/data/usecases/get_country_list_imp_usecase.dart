import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetCountryListImpUsecase implements GetCountryListUsecase {
  final GetCountryListRepository countryListRepository;
  List<String> listCountries = [];

  GetCountryListImpUsecase(this.countryListRepository);

  @override
  Future<List<String>> call() async {
    final result = await countryListRepository();

    for (var element in result) {
      listCountries.add(element.country);
    }

    listCountries = listCountries.toSet().toList();
    listCountries.sort();

    return listCountries;
  }
}
