import 'package:Book_tickets/utils/app_layout.dart';
import 'package:Book_tickets/utils/app_style.dart';
import 'package:Book_tickets/widgets/four_text1.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: AppLayout.getWidth(90),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      image: AssetImage("assets/img.png"),
                    )),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book_tickets",
                    style: Style.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: Style.textStyle,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          decoration:
                          const BoxDecoration(shape: BoxShape.circle, color:  Color(0xFF526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799), fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: Style.textStyle
                          .copyWith(color: Style.primaryColor, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Style.primaryColor,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Style.primaryColor,
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      children: [
                        Text(
                          "You've got a new award",
                          style: Style.headLineStyle2
                              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Style.headLineStyle2.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Style.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(50)),
          Text(
            textAlign: TextAlign.center,
            "192802",
            style: TextStyle(color: Style.textColor, fontSize: 45, fontWeight: FontWeight.w600),
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Miles accrued", style: Style.headLineStyle4.copyWith(fontSize: 17)),
              Text("27 January 2023", style: Style.headLineStyle4.copyWith(fontSize: 17)),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          const FourText1(
              firstTop: "23 042",
              secondTop: "Airline CO",
              firstBottom: "Miles",
              secondBottom: "Received from"),
          Gap(AppLayout.getHeight(20)),
          const FourText1(
              firstTop: "23 042",
              secondTop: "Airline CO",
              firstBottom: "Miles",
              secondBottom: "Received from"),
          Gap(AppLayout.getHeight(20)),
          const FourText1(
              firstTop: "23 042",
              secondTop: "Airline CO",
              firstBottom: "Miles",
              secondBottom: "Received from"),
          Gap(AppLayout.getHeight(20)),
          InkWell(onTap: (){},
            child: Text(
              textAlign: TextAlign.center,
              "How to get more miles",
              style: Style.textStyle.copyWith(fontSize: 18, color: Style.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
