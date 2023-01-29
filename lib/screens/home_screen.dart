import 'package:Book_tickets/screens/hotel_screen.dart';
import 'package:Book_tickets/widgets/ticket_view.dart';
import 'package:Book_tickets/utils/app_info_list.dart';
import 'package:Book_tickets/utils/app_layout.dart';
import 'package:Book_tickets/utils/app_style.dart';
import 'package:Book_tickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Style.headLineStyle3),
                        Gap(AppLayout.getHeight(5)),
                        Text("Book_tickets", style: Style.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(80),
                      width: AppLayout.getHeight(60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/img.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Style.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const DoubleText(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketlist
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const DoubleText(bigText: "Hotels", smallText: "View all")),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(16)),
            child: Row(
              children: hotelList
                  .map((singlehotel) => HotelScreen(hotel: singlehotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
