import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_parallax/pages/home/widgets/parallax_travel.dart';
import 'package:travel_app_parallax/pages/home/widgets/recommends_widget.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget get _appBar => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  labelText: 'Search',
                  labelStyle: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                  fillColor: Colors.grey.shade300,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _appBar,
                Text('Para onde você quer viajar?',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
                const ParallaxTravel(),
                const RecommendsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
