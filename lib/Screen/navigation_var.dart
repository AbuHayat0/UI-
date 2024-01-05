
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Screen/Acco.dart';
import 'package:project_app/Screen/home.dart';
import 'package:project_app/Screen/search.dart';
import 'package:project_app/Screen/sms.dart';
class Navigation_bar extends StatelessWidget {
  const Navigation_bar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationControler());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          elevation: 0.0,
          selectedIndex: controller.selected.value,
          height: 60,
          onDestinationSelected: (index) => controller.selected.value= index,
          destinations: [
           NavigationDestination(icon: Icon(Icons.home), label:"Home"),
           NavigationDestination(icon: Icon(Icons.search), label:"Explore"),
           NavigationDestination(icon: Icon(Icons.chat_bubble_outline_outlined), label:"sms"),
           NavigationDestination(icon: Icon(Icons.perm_identity), label:"Account"),
          ],
        ),
      ),

      body: Obx(()=> controller.screens[controller.selected.value]),

    );
  }
}

class NavigationControler extends GetxController{
  final Rx<int> selected = 0.obs;

  final screens = [
    Home(),
    Explore(),
    sms(),
    AccountPage(userEmail: "Hyat3mmm@gmail.com", userName: "AbuHyat", profileImageUrl:Image.asset("assets/imags/pic1.jpg") )
  ];

}


