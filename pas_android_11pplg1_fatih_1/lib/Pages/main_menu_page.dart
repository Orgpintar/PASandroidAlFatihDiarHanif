
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Controller/main_menu_controller.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final MainMenucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: MainMenucontroller.selectedIndex.value,
          children: MainMenucontroller.listpages,
        ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: MainMenucontroller.changePage,
          currentIndex: MainMenucontroller.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
