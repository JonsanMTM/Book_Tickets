import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(AppLayout.getHeight(50)),
              ),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppLayout.getHeight(50)),
              ),
              color: const Color(0xFFF4F6FD),
            ),
            child: Center(child: Text(secondTab)),
          ),
        ),
      ],
    );
  }
}
