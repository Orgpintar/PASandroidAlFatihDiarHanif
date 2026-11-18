
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_android_11pplg1_fatih_1/Model/team_model.dart';

class ListTeamController extends GetxController {
  RxList<PremierLeagueModel> listTeam = <PremierLeagueModel>[].obs;
  var isLoading = false.obs;

  Future<void> fetchMakanan() async {
    try {
      isLoading.value = true;

      final response = await http.get(
        Uri.parse(
          'https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League',
        ),
      );

      if (response.statusCode == 200) {
        listTeam.value = premierLeagueModelFromJson(response.body);
      } else {
        print('Gagal mengambil data: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchMakanan();
  }
}
