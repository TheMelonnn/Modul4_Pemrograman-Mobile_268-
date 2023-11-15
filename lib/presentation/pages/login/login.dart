import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_app/presentation/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'StayBook',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              child: Image.asset(
                'assets/images/logo1.png',
                width: 500,
                height: 500,
              ),
            ),
            Container(
              width: 200,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Get.toNamed(AppPage.newRegister);
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 200,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Get.toNamed(AppPage.dashboard);
                },
                child: Text(
                  'Guest',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
