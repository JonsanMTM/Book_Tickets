import 'package:barcode_widget/barcode_widget.dart';
import 'package:Book_tickets/utils/app_info_list.dart';
import 'package:Book_tickets/utils/app_layout.dart';
import 'package:Book_tickets/widgets/four_text.dart';
import 'package:Book_tickets/widgets/ticket_view.dart';
import 'package:Book_tickets/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Style.headLineStyle1
                      .copyWith(fontSize: AppLayout.getWidth(35)),
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(ticket: ticketlist[0], isColor: true),
                ),
                const FourText(
                    firstTop: "Flutter DB ",
                    secondTop: "5221 478566",
                    firstBottom: "Passenger",
                    secondBottom: "Passport"),
                Container(
                  margin: EdgeInsets.only(
                      right: AppLayout.getHeight(16),
                      left: AppLayout.getHeight(11)),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    height: AppLayout.getHeight(24),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(3),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300)),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const FourText(
                    firstTop: "0055 444 77147",
                    secondTop: "B2SG2B",
                    firstBottom: "Number of E-ticket",
                    secondBottom: "Booking code"),
                Container(
                  margin: EdgeInsets.only(
                      right: AppLayout.getHeight(16),
                      left: AppLayout.getHeight(11)),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(24),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                    (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade300)),
                                        )),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/visa.png",
                                  scale: 10,
                                ),
                                Text(
                                  " **** 2462",
                                  style: Style.headLineStyle3,
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "\$249.99",
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
                                    "Pay method",
                                    style: Style.headLineStyle4,
                                  ),
                                ),
                                SizedBox(
                                  width: AppLayout.getWidth(100),
                                  child: Text(
                                    "Price",
                                    textAlign: TextAlign.end,
                                    style: Style.headLineStyle4,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15)),
                            child: BarcodeWidget(
                              data: '61535165468531355313515',
                              barcode: Barcode.code128(),
                              drawText: false,
                              height: AppLayout.getHeight(70),
                            )),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                TicketView(ticket: ticketlist[0]),
              ]),
          Positioned(
            left: AppLayout.getWidth(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Style.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Style.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Style.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Style.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
