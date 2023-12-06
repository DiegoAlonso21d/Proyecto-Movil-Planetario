import 'package:flutter_app_planetario/routes/routesName.dart';
import 'package:flutter_app_planetario/screens/screens.dart';

import 'package:get/get.dart';

class RoutesPage {
  static final List<GetPage> pages = [
    GetPage(
      name: RoutesName.LOGIN,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RoutesName.REGISTER,
      page: () => RegisterScreen(),
    ),
  ];
}
