import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/infra/httpclient/http.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../data/usecases/usecases.dart';
import '../cubit/cubit.dart';
import '../view/view.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  @override
  Widget build(BuildContext context) {
    final Map argumentsRoute = ModalRoute.of(context)?.settings.arguments as Map;

    return BlocProvider(
      create: (_) => CitiesCubit(
        GetCitiesListImpUsecase(
          GetCitiesListImpRepository(
            GetCitiesListImpDatasource(
              DioClientImp(),
            ),
          ),
        ),
        selectedCountry: argumentsRoute['country'].toString(),
        selectedState: argumentsRoute['state'].toString(),
      ),
      child: BlocBuilder<CitiesCubit, CitiesState>(
        builder: (BuildContext context, CitiesState state) {
          if (state is CitiesInProgress) {
            return const ZeraLoadingWidget();
          } else if (state is CitiesSuccess) {
            return CitiesView(
              selectedCountry: state.selectedCountry,
              selectedState: state.selectedState,
              listCities: state.dataCities,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
