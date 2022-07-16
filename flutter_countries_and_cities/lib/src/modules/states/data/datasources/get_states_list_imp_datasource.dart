import '../../../../core/data/constants/constants.dart';
import '../../../../core/entities/country_entity.dart';
import '../../../../core/infra/httpclient/http.dart';
import '../../../../core/models/models.dart';
import 'datasources.dart';

class GetStatesListImpDatasource implements GetStatesListDatasource {
  final HttpClient httpClient;

  GetStatesListImpDatasource(this.httpClient);

  @override
  Future<List<CountryEntity>> call(String selectedCountry) async {
    final String endpoint = '${ConfigEndpointConst.baseURL}?country=$selectedCountry';

    final response = await httpClient.request(url: endpoint, method: 'get');

    return response.body.map<CountryEntity>((map) => CountryModel.fromJson(map).toEntity()).toList();
  }
}
