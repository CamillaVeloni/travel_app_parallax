import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core/models/travel_model.dart';
import '../controller.dart';

@immutable
class LocationListItem extends StatelessWidget {
  final int index;
  final TravelModel travel;
  const LocationListItem({
    super.key,
    required this.index,
    required this.travel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () => HomeController.to.navigateToDetail(travel),
        child: Stack(
          children: <Widget>[
            _buildParallaxBackground(),
            _buildTitleAndSubtitle(),
          ],
        ),
      ),
    );
  }

  Widget _buildParallaxBackground() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Obx(
          () => Image.network(
            travel.imageUrl,
            height: 400,
            fit: BoxFit.cover,
            alignment: Alignment(-HomeController.to.pageOffset.value.abs()+index, 0),
          ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            travel.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            travel.country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}