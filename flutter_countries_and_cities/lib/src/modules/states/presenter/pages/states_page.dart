import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/infra/httpclient/http.dart';
import '../../../../core/widgets/widgets.dart';
import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../data/usecases/usecases.dart';
import '../cubit/cubit.dart';
import '../view/view.dart';

class StatesPage extends StatefulWidget {
  const StatesPage({Key? key}) : super(key: key);

  @override
  _StatesPageState createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {
  @override
  Widget build(BuildContext context) {
    final Map argumentsRoute = ModalRoute.of(context)?.settings.arguments as Map;

    return BlocProvider(
      create: (_) => StatesCubit(
        GetStatesListImpUsecase(
          GetStatesListImpRepository(
            GetStatesListImpDatasource(
              DioClientImp(),
            ),
          ),
        ),
        selectedCountry: argumentsRoute['country'].toString(),
      ),
      child: BlocBuilder<StatesCubit, StatesState>(
        builder: (BuildContext context, StatesState state) {
          if (state is StatesInProgress) {
            return const ZeraLoadingWidget();
          } else if (state is StatesSuccess) {
            return StatesView(
              selectedCountry: state.selectedCountry,
              listStates: state.dataStates,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
