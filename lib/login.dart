
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
    
  }

  Widget content(){
    return Column(children: [
      Container(height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.tealAccent, 
      borderRadius: BorderRadius.only(
        bottomRight: Radius.elliptical(80, 80)),),
       child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Image.asset("assets/logo_bird.png"),),

      ),
      SizedBox(height: 40,),
      inputStyle("Adınız  ", "Lütfen Kullanıcı Adınızı Giriniz"),
      SizedBox(
        height: 20,
      ),
      inputStyle("Şifreniz", "Şifrenizi Giriniz"),
      SizedBox(
        height: 50,
      ),
      Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(color: Color.fromARGB(255, 213, 118, 191),
        borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(onPressed: () {        
        },
        child: Text("Giriş", style: TextStyle(fontSize: 15, color: Colors.black),),),
      ),
      SizedBox(
        height: 20,
      ),
      RichText(text: TextSpan(
        children: [
          TextSpan(text: "Hesabınız Yok mu?", style: TextStyle(fontSize: 11, color: Colors.grey[850])),
          TextSpan(text: "Kayıt Ol", style: TextStyle(fontSize: 11, color:  Colors.orangeAccent[700]),
          recognizer: TapGestureRecognizer()..onTap=(() {
            Navigator.of(context).pushNamed("/register");
          })) ]
      ),),
    ],);
  }
}

Widget inputStyle(String title,String hintTxt){

  return Padding(
        padding: const EdgeInsets.fromLTRB(50,5,50,10),
        child: Row(
          children: [
            Text("$title :"),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0,3)
                  )
                ]),
                 
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hintTxt),
                ),
                
              ),
            ),
          ],
        ),
      );

}