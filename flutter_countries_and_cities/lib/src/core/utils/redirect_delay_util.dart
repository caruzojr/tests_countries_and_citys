import 'package:flutter/material.dart';

import 'nav_util.dart';

Future redirectDelayRouter(
  BuildContext context, {
  String? routeRedirect,
  int milliseconds = 5000,
  bool replace = true,
}) async {
  await Future.delayed(
    Duration(milliseconds: milliseconds),
    () {
      pushNamed(context, routeRedirect!, replace: replace);
    },
  );
}

Future redirectDelayWidget(
  BuildContext context, {
  Widget? widgetRedirect,
  int milliseconds = 5000,
  bool replace = true,
}) async {
  await Future.delayed(
    Duration(milliseconds: milliseconds),
    () {
      push(context, widgetRedirect!, replace: replace);
    },
  );
}
