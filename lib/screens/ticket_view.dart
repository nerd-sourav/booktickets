import 'package:booktickets/Widgets/thick_container.dart';
import 'package:booktickets/utils/layouts.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
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
                  Row(children: [
                    Text("NYC",
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white)),
                    const Spacer(),
                    ThickContainer(),
                    Expanded(
                      child: SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints){
                            
                            Text("data"),},
                          child: Flex(
                            direction: Axis.horizontal,
                            children: List.generate(
                              10,
                              (index) => Text("_"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ThickContainer(),
                    const Spacer(),
                    Text("London",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white))
                  ]),
                  Row(children: [
                    Text("NYC", style: Styles.headLineStyle3),
                    const Spacer(),
                    Text("London", style: Styles.headLineStyle3),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
