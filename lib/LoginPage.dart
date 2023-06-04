import 'package:flutter/material.dart';
import 'Components/Widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var controllerSifre = TextEditingController();
  var controllerkurumkod = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FToast().init(context);
  }
  @override
  Widget build(BuildContext context) {
    var genislik = MediaQuery.of(context).size.width;
    var yukseklik = MediaQuery.of(context).size.height;

    print("ekran yüksekliği: $yukseklik");
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Giriş"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(bottom: yukseklik/150, top: yukseklik/35.37),
                    ),
                    Image.asset(
                      "assets/images/beykoz_mem_logo.png",
                      width: genislik / 2.5,
                      height: genislik / 2.5,
                    ),
                     Padding(
                      padding: EdgeInsets.only(bottom:yukseklik/150, top: yukseklik/14.14),
                    ),
                    buildTextField(controllerkurumkod, "kurum kodu", genislik / 1.5, const Icon(Icons.person), sifrelimi: false, rakamklavye: true),
                     Padding(
                      padding: EdgeInsets.only(bottom: yukseklik/150, top: 5),
                    ),
                    buildTextField(controllerSifre, "şifre", genislik / 1.5, const Icon(Icons.password_rounded), sifrelimi: true, rakamklavye: false),
                     Padding(
                      padding: EdgeInsets.only(bottom: yukseklik/50, top: yukseklik/150),
                    ),
                    buildButton("Giriş", genislik / 1.5, genislik / 8, () {
                      if (controllerkurumkod.text.isEmpty ||
                          controllerSifre.text.isEmpty) {
                        gosterToast(
                            "Tüm Alanları Doldurunuz",
                            const Icon(
                              Icons.error_outline,
                              color: Colors.white,
                            ));
                      } else {
                        /// yapılacak işler
                        ///
                        ///
                        ///
                        ///
                        ///
                      }
                    }, arkaplanrenk: Colors.teal,
                        textrenk: Colors.white),

                  ]),
            ),
          ),
        ));
  }
}
