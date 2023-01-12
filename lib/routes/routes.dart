import 'package:get/get.dart';

import '../presentation/screens/screens.dart';

class SwithRoutes {
  SwithRoutes._();

  static const String list = '/list';
}

class SwithPages {
  SwithPages._();

  static final pages = [
    GetPage(
      name: SwithRoutes.list,
      page: () => const ListScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 170),
    ),
  ];
}
