import 'package:get/get.dart';
import 'package:module_app/presentation/pages/pages.dart';
import '../bindings/bindings.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(name: newRegister,
            page: () => RegisterPage(),
            binding: RegisterBinding(),
    ),
  ];

  static getLogin() => login;
  static getDashboard() => dashboard;
  static getnewRegister() => newRegister;

  static String login = '/';
  static String dashboard = '/dashboard';
  static String newRegister = '/newRegister';
}
