
import 'package:flutter/material.dart';
import 'package:project4/routesname.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({
    super.key
  }) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              btn(
                text: "Get All Posts",
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.getall);
                },
              ),
              
              btn(text: "Add Post", onPressed: () {
                Navigator.pushNamed(context, RoutesName.addd);
              }),
              
            ]),
      ),
    );}}

    
  MaterialButton btn({required String text,required void Function()? onPressed}) {
    return MaterialButton(onPressed:onPressed,
          child: Text(text,style: TextStyle(color: Colors.white,fontSize: 25),),
          color: Colors.red,
          padding: EdgeInsets.all(15),);
  }