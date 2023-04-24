import 'package:flutter/material.dart';
import 'package:travel_app_parallax/pages/home/controller.dart';

import '../../../core/data/travel_data.dart';
import '../../../core/widgets/item_widget.dart';

class RecommendsWidget extends StatelessWidget {
  const RecommendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Recomendações para você',
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 80,
          child: FadeTransition(
            opacity: HomeController.to.animation,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = RECOMMENDATIONS_DATA[index];
                return ItemWidget(
                  imageUrl: item['image_url'],
                  name: item['name'],
                  startPrice: item['start_price'],
                );
              },
              itemCount: RECOMMENDATIONS_DATA.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 8,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
