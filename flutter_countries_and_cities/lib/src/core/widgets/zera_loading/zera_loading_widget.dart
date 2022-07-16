import 'package:flutter/material.dart';

class ZeraLoadingWidget extends StatelessWidget {
  const ZeraLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
