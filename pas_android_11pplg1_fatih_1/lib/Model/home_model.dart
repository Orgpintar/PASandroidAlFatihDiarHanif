class HomeModel {
  var namaMakanan;
  var hargaMakanan;
  var imageUrl;
  var deskripsiMakanan;

  // tambahkan properti deskripsiMakanan untuk menyimpan deskripsi makanan

 //ini adalah constructor untuk class makananModel
  HomeModel(
    {
      required this.namaMakanan, 
      required this.hargaMakanan, 
      required this.imageUrl, 
      required this.deskripsiMakanan
      }
  );
}