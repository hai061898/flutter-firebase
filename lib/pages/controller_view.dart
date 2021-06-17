import 'package:e_commerce_firebase/controller/auth_controller.dart';
import 'package:e_commerce_firebase/controller/controller_view.dart';
import 'package:e_commerce_firebase/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user == null)
          ? LoginScreen()
          : GetBuilder<ControllerView>(
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                // bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    });
  }
}
