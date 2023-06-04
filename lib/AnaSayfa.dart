import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Okuldan Okula"),

        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body:const Center(child: Text("AnaSayfaya Hoşgeldiniz"),),
    );
  }
}
