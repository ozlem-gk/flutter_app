import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 127, 134, 125),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                Icon(Icons.menu),
                Row(
                  children: [
                    Icon(Icons.search),
                    Icon(Icons.notifications)

                  ]
                

                )
                
              ],),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Popüler Kitaplar", style: TextStyle(fontSize: 30),),
                  )
                ],

              ),
              Container(
                height: 180,
                child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child:
                  Container(
                height: 180,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 5,
                  itemBuilder: (_,i){
                  return Container(
                    height: 180,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage("assets/booksmain.jpg"))),
                  );
                }),
              )

                  )
                ],
                ),
              ),
              
            ],
          ),
        )
      ),
    );
  }
}