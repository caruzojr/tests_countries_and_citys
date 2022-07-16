import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/data/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/widgets.dart';

class CountriesView extends StatelessWidget {
  final List<String>? listCountries;

  const CountriesView({
    Key? key,
    required this.listCountries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(),
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 120.0,
        title: SvgPicture.asset(
          StringsCoreConst.logoCoutriesCities,
          height: 68,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
        child: Column(
          children: [
            const Text('Selecione um país para visualizar todas os estados que ele contém:'),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(height: 6.0),
                itemCount: listCountries!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: ZeraCardListWidget(titleCard: listCountries![index]),
                    onTap: () => pushNamed(context, ConfigRouteConst.statesRouter,
                        arguments: {'country': listCountries![index]}),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
