import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/data/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../data/constants/constants.dart';

part './splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenSuccess());

  delayRedirectRouter(BuildContext context) {
    redirectDelayRouter(
      context,
      routeRedirect: ConfigRouteConst.countriesRouter,
      milliseconds: ConfigConst.millisecondsRedirect,
      replace: ConfigConst.replaceRedirect,
    );
  }
}
