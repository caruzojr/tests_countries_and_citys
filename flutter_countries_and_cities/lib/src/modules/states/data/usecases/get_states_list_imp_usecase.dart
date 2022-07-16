import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetStatesListImpUsecase implements GetStatesListUsecase {
  final GetStatesListRepository statesListRepository;
  List<String> listStates = [];

  GetStatesListImpUsecase(this.statesListRepository);

  @override
  Future<List<String>> call(String selectedCountry) async {
    final result = await statesListRepository(selectedCountry);

    for (var element in result) {
      listStates.add(element.state);
    }

    listStates = listStates.toSet().toList();
    listStates.sort();

    return listStates;
  }
}
