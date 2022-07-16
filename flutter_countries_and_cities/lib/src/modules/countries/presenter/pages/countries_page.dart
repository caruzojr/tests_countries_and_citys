import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countries_and_cities/src/modules/countries/data/datasources/datasources.dart';
import 'package:flutter_countries_and_cities/src/modules/countries/data/repositories/repositories.dart';

import '../../../../core/infra/httpclient/http.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/usecases/usecases.dart';
import '../cubit/cubit.dart';
import '../view/view.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountriesCubit(
        GetCountryListImpUsecase(
          GetCountryListImpRepository(
            GetCountryListImpDatasource(
              DioClientImp(),
            ),
          ),
        ),
      ),
      child: BlocBuilder<CountriesCubit, CountriesState>(
        builder: (BuildContext context, CountriesState state) {
          if (state is CountriesInProgress) {
            return const ZeraLoadingWidget();
          } else if (state is CountriesSuccess) {
            return CountriesView(listCountries: state.dataCountries);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
