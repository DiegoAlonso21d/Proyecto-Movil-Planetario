import 'package:flutter/material.dart';
import 'package:flutter_app_planetario/routes/routesName.dart';
import 'package:flutter_app_planetario/routes/routesPages.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesName.POST,
      getPages: RoutesPage.pages,
    );
  }
}
