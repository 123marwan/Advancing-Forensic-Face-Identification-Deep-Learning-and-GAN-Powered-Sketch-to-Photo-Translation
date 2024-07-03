// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:marwan_s_application10/components.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import '../Network/remote/dio_helper.dart';
import '../presentation/screen_one_screen/screen_one_screen.dart';
import '../widgets/snackbar.dart';

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
            'email': provider.emailLoginController.text,
            'password': provider.passwordLoginController.text,
          });
      print('HTTP Status Code: ${response?.statusCode}');
      if (response != null && response.statusCode == 200) {
        showSnackBar(context, 'login success', Colors.greenAccent);
        navigateTo(context, ScreenOneScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      showSnackBar(context, 'invalid email or password', Colors.red);
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

      if (response != null &&
          response.statusCode == 200 &&
          provider.passwordController.text.isNotEmpty &&
          provider.userNameController.text.isNotEmpty &&
          provider.phoneController.text.isNotEmpty &&
          provider.emailController.text.isNotEmpty &&
          provider.confirmpasswordController.text.isNotEmpty) {
        showSnackBar(context, 'signup success',
            Colors.greenAccent); // ScaffoldMessenger.of(child: context.)

        navigateTo(context, LoginScreen());
      } else {
        print("Wrong email pr password. Status code: ${response?.statusCode}");
      }
    } catch (e) {
      showSnackBar(context, 'something went wrong , try again', Colors.red);

      print("Sever Exception: $e");
    }
  }
}
