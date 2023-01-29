import 'package:Book_tickets/utils/app_layout.dart';
import 'package:Book_tickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              blurRadius: 20, spreadRadius: 1, color: Colors.grey.shade200),
        ],
        color: Style.primaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Style.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/${hotel['image']}"))),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "${hotel['place']}",
            style: Style.headLineStyle2.copyWith(color: Style.kakiColors),
          ),
           Gap(AppLayout.getHeight(5)),
          Text(
            "${hotel['destination']}",
            style: Style.headLineStyle3.copyWith(color: Colors.white),
          ),
           Gap(AppLayout.getHeight(8)),
          Text(
            "\$${hotel['price']}/night",
            style: Style.headLineStyle1.copyWith(color: Style.kakiColors),
          ),
        ],
      ),
    );
  }
}
