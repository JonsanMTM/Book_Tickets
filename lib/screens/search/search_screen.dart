import 'package:Book_tickets/utils/app_layout.dart';
import 'package:Book_tickets/utils/app_style.dart';
import 'package:Book_tickets/widgets/icon_text_widget.dart';
import 'package:Book_tickets/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Style.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: "Airline tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_outlined, text: 'Geparture'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_outlined, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(10))),
                  backgroundColor: MaterialStatePropertyAll(Color(0xD91130CE))),
              child: Text(
                "Find tickets",
                style: Style.textStyle.copyWith(color: Colors.white),
              )),
          Gap(AppLayout.getHeight(40)),
          DoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(12)),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("assets/sit.png"))),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      "20% discount on the  eraly booking of this flight. Don't miss.",
                      style: Style.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(12)),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 1)
                          ],
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                        ),
                        width: size.width * 0.42,
                        child: Column(
                          children: [
                            Text("Discount\nfor survey",
                                style: Style.headLineStyle2.copyWith(color: Colors.white)),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              "Take the survey about our services and get a discount",
                              style: Style.textStyle.copyWith(
                                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      Positioned(right: -50,top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18, color: Color(0xFF189999))),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(12)),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 1)
                      ],
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    ),
                    height: AppLayout.getHeight(200),
                    width: size.width * 0.42,
                    child: Column(
                      children: [
                        Gap(AppLayout.getHeight(7)),
                        Text("Take love",
                            style: Style.headLineStyle2.copyWith(color: Colors.white)),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 30, fontFamily: "MacEmoji"),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 40, fontFamily: "MacEmoji"),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 30, fontFamily: "MacEmoji"),
                          ),
                        ])),
                        Gap(AppLayout.getHeight(15)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
