import 'dart:convert';
import 'package:crypto/crypto.dart';


donusturCrypto(String giris){
  var bytes = utf8.encode(giris);
  var cikis = sha512256.convert(utf8.encode(md5.convert(bytes).toString())).toString();
  return cikis;
}

