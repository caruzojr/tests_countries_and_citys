import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/data/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/widgets.dart';

class StatesView extends StatelessWidget {
  final String selectedCountry;
  final List<String>? listStates;

  const StatesView({
    Key? key,
    required this.selectedCountry,
    required this.listStates,
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
        toolbarHeight: 80.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: SvgPicture.asset('assets/icons/icon_arrow_left.svg', height: 24),
              onTap: () => Navigator.of(context).pop(),
            ),
            SvgPicture.asset(
              StringsCoreConst.logoCoutriesCitiesInline,
            ),
            Container(),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('País selecionado:'),
            const SizedBox(height: 10.0),
            Text(
              selectedCountry.toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 30.0),
            const Text('Selecione um estado para visualizar todas as cidades que ele contém:'),
            const SizedBox(height: 15.0),
            RichText(
              text: TextSpan(
                text: 'Total: ',
                style: Theme.of(context).textTheme.subtitle2,
                children: <TextSpan>[
                  TextSpan(text: '${listStates!.length} Estados', style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            const SizedBox(height: 14.0),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(height: 6.0),
                itemCount: listStates!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: ZeraCardListWidget(titleCard: listStates![index]),
                    onTap: () => pushNamed(context, ConfigRouteConst.citiesRouter,
                        arguments: {'country': selectedCountry, 'state': listStates![index]}),
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
