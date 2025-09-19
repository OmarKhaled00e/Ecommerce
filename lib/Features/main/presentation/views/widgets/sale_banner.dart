import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SaleBanner extends StatelessWidget {
  const SaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get Your',
                  style: Styles.withColor(Styles.textH18, Colors.white),
                ),
                Text(
                  'Special Sale',
                  style: Styles.withColor(
                    Styles.withWeight(Styles.textH24, FontWeight.bold),
                    Colors.white,
                  ),
                ),
                Text(
                  'Up to 40%',
                  style: Styles.withColor(Styles.textH18, Colors.white),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            child: Text('Shop Now', style: Styles.buttonMedium15),
          ),
        ],
      ),
    );
  }
}
