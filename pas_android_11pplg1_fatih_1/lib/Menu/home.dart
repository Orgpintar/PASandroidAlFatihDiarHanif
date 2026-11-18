import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Controller/home_controller.dart';
import 'package:pas_android_11pplg1_fatih_1/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final listhomeController controller =
      Get.put(listhomeController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

                child: InkWell(
                  onTap: () {
                    // buat ke detail makanan
                    Get.toNamed(
                      Routes.transaksi,
                      arguments: makanan,
                    );
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(makanan.namaMakanan),
                        subtitle: Text(makanan.hargaMakanan),
                        leading: Image.network(makanan.imageUrl),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                )
              );
            }
          ),
        ),
      )
    );
  }
}    