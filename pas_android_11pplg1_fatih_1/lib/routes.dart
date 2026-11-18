import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Pages/login_page.dart';
import 'package:pas_android_11pplg1_fatih_1/Pages/main_menu_page.dart';
import 'package:pas_android_11pplg1_fatih_1/Pages/transaksi_page.dart';

class Routes {
  static const String login = '/login';
  static const String mainmenu = '/mainmenu';
  static const String transaksi = '/transaksi';

  static final pages = [
    GetPage( name: login, page: () => LoginPage(),),
    GetPage( name: mainmenu, page: () => MainmenuPage(),),
    GetPage( name: transaksi, page: () => TransaksiPage(),),
  ];
}