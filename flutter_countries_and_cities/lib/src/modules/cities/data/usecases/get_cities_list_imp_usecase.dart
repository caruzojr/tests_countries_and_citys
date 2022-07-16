import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetCitiesListImpUsecase implements GetCitiesListUsecase {
  final GetCitiesListRepository citiesListRepository;
  List<String> listCities = [];

  GetCitiesListImpUsecase(this.citiesListRepository);

  @override
  Future<List<String>> call(String selectedCountry, String selectedState) async {
    final result = await citiesListRepository(selectedCountry, selectedState);

    for (var element in result) {
      listCities.add(element.city);
    }

    listCities = listCities.toSet().toList();
    listCities.sort();

    return listCities;
  }
}
