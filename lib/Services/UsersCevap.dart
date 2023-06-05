import 'Users.dart';
class UsersCevap{

  int success;
  List<Users> usersListesi;

  UsersCevap(this.success, this.usersListesi);


  factory UsersCevap.fromJson(Map<String,dynamic>json){
    var jsonArray=json["users"] as List;

    List<Users>usersListesi=jsonArray.map((jsonArrayNesnesi) => Users.fromJson(jsonArrayNesnesi)).toList();
    return UsersCevap(json["success"] as int, usersListesi);


  }
}