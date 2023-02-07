import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        Text("Book Your Tickets", style: Styles.headLineStyle2)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      const Gap(6),
                      Text("Search", style: Styles.headLineStyle4),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () => print("View All tapped"),
                      child: Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(10),
          Container(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              TicketView(),
              TicketView(),
              TicketView(),
              TicketView()
            ]),
          ),
          // TicketView()
        ],
      ),
    );
  }
}
