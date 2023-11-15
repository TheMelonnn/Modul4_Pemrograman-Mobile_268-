import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_app/presentation/pages/pages.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Registration successful',
          backgroundColor: Colors.green);
      Get.off(DashboardPage()); //Navigate ke Dashboard
    } catch (error) {
      Get.snackbar('Error', 'Registration failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
