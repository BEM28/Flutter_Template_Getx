import 'package:flutter/material.dart';
import 'package:flutter_template_getx/routes/app_routes.dart';
import 'package:flutter_template_getx/utils/constants.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondary),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.primary),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}
