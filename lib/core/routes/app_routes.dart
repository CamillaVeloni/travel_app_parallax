import 'package:get/get.dart';

import '../../pages/index.dart';

class AppRoutes {
  static const home = '/';
  static const detail = '/detail';

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
      name: detail,
      page: () => const DetailPage(),
      transition: Transition.zoom,
    ),
  ];
}
