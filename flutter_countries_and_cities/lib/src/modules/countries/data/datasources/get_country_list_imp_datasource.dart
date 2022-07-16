import '../../../../core/data/constants/constants.dart';
import '../../../../core/entities/entities.dart';
import '../../../../core/infra/httpclient/http.dart';
import '../../../../core/models/models.dart';
import 'datasources.dart';

class GetCountryListImpDatasource implements GetCountryListDatasource {
  final HttpClient httpClient;

  GetCountryListImpDatasource(this.httpClient);

  @override
  Future<List<CountryEntity>> call() async {
    final String endpoint = ConfigEndpointConst.baseURL;

    final response = await httpClient.request(url: endpoint, method: 'get');

    return response.body.map<CountryEntity>((map) => CountryModel.fromJson(map).toEntity()).toList();
  }
}
