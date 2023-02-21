import 'package:booktickets/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/layouts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: Layout.getHeight(20),
            vertical: Layout.getWidth(30),
          ),
          children: [
            Text(
              "What are \nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 50),
            ),
            Gap(Layout.getHeight(40)),
            Container(
              width: size.width * .44,
              height: Layout.getHeight(50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * .44,
                    height: Layout.getHeight(50),
                    decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Airline Ticket",
                        style: Styles.headLineStyle2,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * .44,
                    height: Layout.getHeight(50),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Hotels",
                        style: Styles.headLineStyle2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(Layout.getHeight(40)),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Layout.getHeight(20),
                vertical: Layout.getWidth(20),
              ),
              width: size.width * .44,
              height: Layout.getHeight(60),
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.downloading),
                  Text(
                    "Departure",
                    style: Styles.headLineStyle2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
