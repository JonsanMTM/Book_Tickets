import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class FourText1 extends StatelessWidget {
  final String firstTop;
  final String secondTop;
  final String firstBottom;
  final String secondBottom;
  const FourText1({Key? key, required this.firstTop, required this.secondTop, required this.firstBottom, required this.secondBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Text(
                firstTop,
                style: Style.headLineStyle3.copyWith(fontSize: 19),
              ),
              Expanded(child: Container()),
              Text(
                secondTop,
                style: Style.headLineStyle3.copyWith(fontSize: 19),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(
                  firstBottom,
                  style: Style.headLineStyle4.copyWith(fontSize: 15),
                ),
              ),
              SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(
                  secondBottom,
                  textAlign: TextAlign.end,
                  style: Style.headLineStyle4.copyWith(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      );
  }
}
