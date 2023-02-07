import 'package:booktickets/Widgets/thick_container.dart';
import 'package:booktickets/utils/layouts.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);

    return SizedBox(
      width: size.width * 0.85, //to display the ticket's 85 percent part
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            //this is the top blue container
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Transform.rotate(
                              angle: 90 * math.pi / 180,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New York",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Text("8H 58Mins",
                          style: Styles.headLineStyle3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Text("London",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            //this is the bottom orange Striped container
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
              ),
              // padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Styles.bgColor),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            (constraints.constrainWidth() / 10).floor(),
                            (index) => const SizedBox(
                              height: 1,
                              width: 4,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          color: Styles.bgColor),
                    ),
                  ),
                ],
              ),
            ),
            //this the bottom most orange container
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 May",
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Date",
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "08:00 AM",
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text("Departure Timing",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("23",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white)),
                      Text("Number",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
