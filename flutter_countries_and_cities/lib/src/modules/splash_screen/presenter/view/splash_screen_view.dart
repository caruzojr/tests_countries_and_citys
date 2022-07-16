import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/data/constants/constants.dart';
import '../../data/constants/constants.dart';
import '../cubit/cubit.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    final cubit = BlocProvider.of<SplashScreenCubit>(context);
    cubit.delayRedirectRouter(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ZeraColors.zPrimaryColor,
              ZeraColors.zSecondaryColor,
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            StringsCoreConst.logoCoutriesCities,
            color: Colors.white,
            height: UIConst.heightLogo,
          ),
        ),
      ),
    );
  }
}
