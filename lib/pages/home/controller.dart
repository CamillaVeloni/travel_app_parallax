import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../core/models/travel_model.dart';
import '../../core/routes/app_routes.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  static HomeController get to => Get.find();

  late final AnimationController animationController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();

  late final Animation<double> animation = CurvedAnimation(
    parent: animationController,
    curve: Curves.easeIn,
  );

  late PageController pageController;
  final pageOffset = 0.0.obs;

  void onPageChanged(int index) {
    if (animationController.isCompleted) {
      animationController.reset();
      animationController.forward();
    }
  }

  void navigateToDetail(TravelModel travel) => Get.toNamed(AppRoutes.detail, arguments: travel);

  @override
  void onInit() {
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      pageOffset.value = pageController.page!;
    });
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    animationController.dispose();
    super.onClose();
  }
}