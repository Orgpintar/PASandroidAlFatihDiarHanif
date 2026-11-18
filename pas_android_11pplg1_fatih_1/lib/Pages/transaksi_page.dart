import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Controller/transaksi_controller.dart';
import 'package:pas_android_11pplg1_fatih_1/Component/custom_button.dart/';
import 'package:pas_android_11pplg1_fatih_1/Component/custom_textfield_number.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TransaksiController());
    TextEditingController jumlahpesanan = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi Pembelian'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              controller.imageUrl,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Card(
              elevation: 5,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller.namaMakanan, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, )),
                  ],
                ),
                subtitle: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(controller.deskripsiMakanan, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text("Harga: ${controller.hargaMakanan}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfieldNumber(controller_kaklulator: jumlahpesanan, myHint: "Masukan Jumlah Pesanan", obscureText: false),
          ),
          CustomButton(onPressed: (){
            int jumlah = int.parse(jumlahpesanan.text);
            controller.Bayar(jumlah);
          }, text: "Beli")
          // Get.defaultDialog()
        ],
      ),
    );
  }
}