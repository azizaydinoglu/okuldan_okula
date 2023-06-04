import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


Widget buildTextField(    TextEditingController? controller, String hint,  double genislik, Icon ikon,    {bool sifrelimi = false, bool rakamklavye = false}) {
  return Material(
    elevation: 5,
    child: SizedBox(
      width: genislik,
      child: TextField(

        controller: controller,

        keyboardType: rakamklavye ? TextInputType.number : TextInputType.text,
        textInputAction: TextInputAction.next,
        obscureText: sifrelimi,
        decoration: InputDecoration(


            prefixIcon: ikon,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 13),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.black38,
                ))),
      ),
    ),
  );
}
Widget buildButton(    String buttonyazi, double genislik, double yukseklik, dosomething,    {Color textrenk = Colors.white,      Color arkaplanrenk = Colors.indigoAccent}) {
  return Material(
    shadowColor: Colors.green,
    child: SizedBox(
        width: genislik,
        height: yukseklik,
        child: ElevatedButton(
          onPressed: dosomething,
          style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(width: 0,
                      color: Colors.black38)),
              foregroundColor: textrenk,
              backgroundColor: arkaplanrenk),
          child: Text(buttonyazi),
        )),
  );
}
Widget buildTostContainer(String yazi,Widget ikon){

  return  Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.black38,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children:  [
        ikon,
        const SizedBox(
          width: 12.0,
        ),
        Text(yazi,style:const TextStyle(color: Colors.white),),
      ],
    ),
  );
}
Future<void> gosterToast(String yazi,Widget ikon) async{
  return FToast().showToast(
      toastDuration: const Duration(seconds: 3),
      gravity: ToastGravity.CENTER,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black54,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children:  [
            ikon,
            const SizedBox(
              width: 12.0,
            ),
            Text(yazi,style:const TextStyle(color: Colors.white),),
          ],
        ),
      ));
}
Widget yardimBottom(genislik){

  return  Padding(
    padding: EdgeInsets.only(top: genislik),
    child: GestureDetector(
        onTap: (){gosterToast("yardım için iletişime geçiniz",const Icon(Icons.phone,color: Colors.white,));},
        child:const Text("Yardım için iletişime geçiniz",style: TextStyle(decoration:TextDecoration.underline,fontSize: 13,),)),);
}

