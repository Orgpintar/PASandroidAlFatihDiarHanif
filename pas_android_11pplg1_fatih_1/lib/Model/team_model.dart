// To parse this JSON data, do
// final premierLeagueModel = premierLeagueModelFromJson(jsonString);
import 'dart:convert';


List<PremierLeagueModel> premierLeagueModelFromJson(String str) {
  final jsonData = json.decode(str);

  return List<PremierLeagueModel>.from(
    jsonData["teams"].map((x) => PremierLeagueModel.fromJson(x)),
  );
}
  class PremierLeagueModel {
  String idTeam;
  String strTeam;
  String strStadium;
  String strBadge;
  String strDescriptionEn;

  PremierLeagueModel({
  required this.idTeam,
  required this.strTeam,
  required this.strStadium,
  required this.strBadge,
  required this.strDescriptionEn,
  });

  factory PremierLeagueModel.fromJson(Map<String, dynamic> json) {
    return PremierLeagueModel(
      idTeam: json["idTeam"] ?? "",
      strTeam: json["strTeam"] ?? "",
      strStadium: json["strStadium"] ?? "",
      strBadge: json["strBadge"] ?? "",
      strDescriptionEn: json["strDescriptionEn"] ?? "",
    );
  }
}
