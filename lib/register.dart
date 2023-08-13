import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

Widget content(){
  return Column(
    children: [
      Container(height: 300,
      width: double.infinity,
      color: Color.fromARGB(255, 248, 126, 166),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 20.0),
          child: Image.asset("assets/logo_bird.png")),
          SizedBox(
            height: 1,
          ),
          Text("Kayıt", style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 117, 14, 135)))],
      ),),
      SizedBox(
        height: 40,
      ),
      inputStyle("Email", "ozlemgoksu@gmail.com"),
      inputStyle("Şifre", "1234Aa."),
      inputStyle("Şifre Tekrar", "1234Aa."),
      inputStyle("Adınız", "Özlem"),
      inputStyle("Soyadınız", "Göksu"),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(color: Color.fromARGB(255, 25, 30, 159),
        borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(onPressed: () {        
        },
        child: Text("Kayıt", style: TextStyle(fontSize: 15, color: Colors.white),),),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(color: Color.fromARGB(255, 25, 30, 159),
        borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(onPressed: () {  
          Navigator.of(context).pop();      
        },
        child: Text("Girişe Geri Dön", style: TextStyle(fontSize: 15, color: Colors.white),),),
      ),
    ],
  );
  
  
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