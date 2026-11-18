import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Menu/home.dart';
import 'package:pas_android_11pplg1_fatih_1/Menu/feat.dart';
import 'package:pas_android_11pplg1_fatih_1/Menu/profile.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  void changePage (int index){
    selectedIndex.value = index;
  }
  List<Widget> listpages = [HomePage(), FeatPage(), ProfilePage()];
}