import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class FourText extends StatelessWidget {
  final String firstTop;
  final String secondTop;
  final String firstBottom;
  final String secondBottom;
  const FourText({Key? key, required this.firstTop, required this.secondTop, required this.firstBottom, required this.secondBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(16), left: AppLayout.getHeight(11)),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                firstTop,
                style: Style.headLineStyle3,
              ),
              Expanded(child: Container()),
              Text(
                secondTop,
                style: Style.headLineStyle3,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(3)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(
                  firstBottom,
                  style: Style.headLineStyle4,
                ),
              ),
              SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(
                  secondBottom,
                  textAlign: TextAlign.end,
                  style: Style.headLineStyle4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
