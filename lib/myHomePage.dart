

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                ),],
              ),

              child: Column( // eikhan theke profile suru
                children: [

                ],
              ),
            ),
          ],

        ),
      )
    );

  }

}