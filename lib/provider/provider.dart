// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:marwan_s_application10/components.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import '../Network/remote/dio_helper.dart';
import '../presentation/screen_one_screen/screen_one_screen.dart';

class AppProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailLoginController = TextEditingController();
  TextEditingController passwordLoginController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  void loginToAccount(BuildContext context, AppProvider provider) async {
    try {
      print(provider.emailController.text);
      print(provider.passwordController.text);
      final response = await DioHelper.postData(
          url: 'https://d665-156-195-60-8.ngrok-free.app/login',
          data: {
            'email': provider.emailController.text,
            'password': provider.passwordController.text,
          });
      print('HTTP Status Code: ${response?.statusCode}');
      if (response != null && response.statusCode == 200) {
        print('Login Success');
        navigateTo(context, ScreenOneScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      print("Sever Exception: $e");
    }
  }

  void signUp(BuildContext context, AppProvider provider) async {
    try {
      final response = await DioHelper.postData(
          url: 'https://d665-156-195-60-8.ngrok-free.app/users',
          data: {
            "id": 0,
            "name": provider.userNameController.text,
            "phone": provider.phoneController.text,
            "email": provider.emailController.text,
            "password": provider.passwordController.text,
          });

      print('444444 ${provider.emailController.text}');
      print(provider.passwordController.text);
      print(provider.userNameController.text);
      print(provider.phoneController.text);
      print('HTTP Status Code: ${response?.statusCode}');
      if (response != null && response.statusCode == 200) {
        print('sign Success');
        // ScaffoldMessenger.of(child: context.)

        navigateTo(context, LoginScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      print("Sever Exception: $e");
    }
  }
}
