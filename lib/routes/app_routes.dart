import 'package:flutter_template_getx/presentation/pages/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  // Daftar route aplikasi
  static const home = '/home';

  // Fungsi buat ngedefine routes
  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
  ];
}
