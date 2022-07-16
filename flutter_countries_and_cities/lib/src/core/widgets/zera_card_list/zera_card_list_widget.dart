import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/constants/constants.dart';

class ZeraCardListWidget extends StatelessWidget {
  final String titleCard;
  final bool? showArrowNext;

  const ZeraCardListWidget({
    Key? key,
    required this.titleCard,
    this.showArrowNext = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: ZeraColors.zNeutralColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              titleCard,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (showArrowNext!) ...[
            SvgPicture.asset(
              'assets/icons/icon_arrow_right.svg',
              color: ZeraColors.zNeutralColor,
            ),
          ],
        ],
      ),
    );
  }
}
