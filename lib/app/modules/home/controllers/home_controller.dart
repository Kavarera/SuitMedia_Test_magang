import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController palindromeController = TextEditingController();

  checkPalindrome() {
    String text = palindromeController.text;
    String reversedText = text.trim().split('').reversed.join();
    if (text == reversedText) {
      Get.snackbar(
        "Palindrome",
        "The text is a palindrome",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        margin: const EdgeInsets.only(bottom: 20),
      );
    } else {
      Get.snackbar(
        "Palindrome",
        "The text is not a palindrome",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.only(bottom: 20),
      );
    }
  }

  nextPage() {
    if (nameController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Name data can't be empty",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.only(bottom: 20),
      );
    } else {
      Get.log("Name: ${nameController.text.toString()}");
      Get.toNamed("/second-screen", arguments: nameController.text.toString());
    }
  }
}
