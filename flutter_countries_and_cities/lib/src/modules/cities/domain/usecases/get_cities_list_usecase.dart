abstract class GetCitiesListUsecase {
  Future<List<String>> call(String selectedCountry, String selectedState);
}
