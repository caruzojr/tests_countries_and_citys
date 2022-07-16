import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../view/view.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashScreenCubit(),
      child: BlocBuilder<SplashScreenCubit, SplashScreenState>(
        builder: (BuildContext context, SplashScreenState state) {
          if (state is SplashScreenSuccess) {
            return const SplashScreenView();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
