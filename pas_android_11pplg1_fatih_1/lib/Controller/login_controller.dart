import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:pas_android_11pplg1_fatih_1/routes.dart';
import 'package:pas_android_11pplg1_fatih_1/Model/login_model.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Username dan Password gak boleh kosong",
      );
      return;
    }

    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://mediadwi.com/api/latihan/login",
      );

      final response = await http.post(
        url,
        body: {
          "username": txtUsername.text,
          "password": txtPassword.text,
        },
      );

      if (response.statusCode == 200) {
        loginModel.value = loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar(
            "Berhasil",
            loginModel.value!.message.toString(),
          );

          Get.offNamed(Routes.mainmenu);
        } else {
          Get.snackbar(
            "Gagal",
            loginModel.value!.message.toString(),
          );
        }
      } else {
        Get.snackbar(
          "Error",
          "Terjadi kesalahan pada internet",
        );
      }
    } catch (e) {
      Get.snackbar("Gagal", e.toString());
      print("Error nya: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
