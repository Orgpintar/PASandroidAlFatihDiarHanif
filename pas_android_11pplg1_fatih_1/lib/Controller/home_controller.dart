import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Model/home_model.dart';

class listhomeController extends GetxController{
  RxList<HomeModel> listMakanan = [
    HomeModel(namaMakanan: "Nasi Goreng Spesial", hargaMakanan: "25.000", imageUrl: "https://tse1.mm.bing.net/th/id/OIP.n2TBlalIYoBvXNMAlSiVGgHaFi?r=0&pid=Api&h=220&P=0", deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk."),
    HomeModel(namaMakanan: "Ayam Bakar Madu", hargaMakanan: "30.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDL0CvkPqxfM7rG2AJ0jv5meZLYSbWSRNnObVwCYoX-A&s=10", deskripsiMakanan: "Ayam bakar olesan madu murni lengkap dengan sambalterasi dan lalapan."),
    HomeModel(namaMakanan: "Sate Ayam Madura", hargaMakanan: "28.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYycbmcWojQ_LKfsLnuuprJt59c8N8MQFLnUdPxPcREA&s=10", deskripsiMakanan: "10 tusuk sate ayam daging pilihan dengan siramanbumbu kacang kental."),
    HomeModel(namaMakanan: "Mie Ayam Bakso", hargaMakanan: "20.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0u2QHu74N7TqDDlJynJI58pIiegG156NZJNR-a1org&s", deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan2 butir bakso sapi."),
    HomeModel(namaMakanan: "Es Teh Manis Jumbo", hargaMakanan: "8.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRBLcqGvJXgG5YtfstTPKJc56VEcqXC7vv0OmmvbVNqg&s=10", deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batukristal."),
  ].obs;
}