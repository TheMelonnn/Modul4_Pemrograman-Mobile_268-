import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:module_app/firebase_options.dart';
import 'package:module_app/presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPage.getLogin(),
    getPages: AppPage.routes,
  ));
}
