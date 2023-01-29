import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Style.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Style.textStyle.copyWith(color: Style.primaryColor),
          ),
        ),
      ],
    );
  }
}
