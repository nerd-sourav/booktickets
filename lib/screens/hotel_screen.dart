import 'package:booktickets/utils/layouts.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);

    return Container(
      margin: const EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          color: Styles.primaryColor, borderRadius: BorderRadius.circular(16)),
      width: size.width * 0.5,
      height: 340,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DecorationImage(image: Image.("assets/images/one.png"))

          Container(
            margin: const EdgeInsets.all(16),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  hotel['image'].toString(),
                ),
              ),
            ),
          ),
          const Gap(10),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  hotel['place'].toString(),
                  style:
                      Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
                ),
                Text(
                  hotel['destination'].toString(),
                  style: Styles.headLineStyle2,
                ),
                Text(
                  '\$${hotel['price']}/night',
                  style:
                      Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
