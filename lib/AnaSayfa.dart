import 'package:flutter/material.dart';
import 'Services/Users.dart';
import 'Services/UsersCevap.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Users> parseUsersCevap(String cevap) {
    return UsersCevap.fromJson(json.decode(cevap)).usersListesi;
  }

  Future<List<Users>> tumUsers() async {
    var url =Uri.parse("https://azizaydinoglu.online/okuldan/users/tum_users.php");

    ///aşağıdaki kodu authorization işini halledilince yazılacak
    //var cevap = await http.get(url, headers: headers);
    var cevap = await http.get(url);
    return parseUsersCevap(cevap.body);
  }

  @override
  Widget build(BuildContext context) {
   /* return Scaffold(
        appBar: AppBar(
          title: const Text("okuldan okula"),
          backgroundColor: Colors.teal,
        ),
        body: FutureBuilder<List<Users>>(
          future: tumUsers(),
          builder: (context, snapshot){
            if (snapshot.hasData) {
              var userListesi = snapshot.data;

              return ListView.builder(
                itemCount: userListesi?.length,
                itemBuilder: (context,index){
                  var users=userListesi![index];
                  return Card(child: ListTile(title: Text("${users.user_name}",style: TextStyle(fontSize: 12),),),);

                },
              );
            } else
              {
                return const Center(child: CircularProgressIndicator());

              }
          } ,
        ));*/
    return  Scaffold(
      appBar: AppBar(title:const Text("Anasayfa"),),
        body:const Center(child: Text("Anasayfaya hoşgeldiniz"),));
  }
}
