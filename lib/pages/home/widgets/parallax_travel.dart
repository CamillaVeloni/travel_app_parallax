import 'package:flutter/material.dart';
import '../controller.dart';
import '/core/data/travel_data.dart';

import 'location_list_item.dart';

class ParallaxTravel extends StatelessWidget {
  const ParallaxTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: SizedBox(
        height: 400,
        child: PageView.builder(
          controller: HomeController.to.pageController,
          onPageChanged: HomeController.to.onPageChanged,
          itemBuilder: (BuildContext ctx, int index) {
            final item = TRAVEL_DATA[index];
            return LocationListItem(
              index: index,
              travel: item,
            );
          },
          itemCount: TRAVEL_DATA.length,
        ),
      ),
    );
  }
}
