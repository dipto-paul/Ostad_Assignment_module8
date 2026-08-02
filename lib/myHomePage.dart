

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
        padding: EdgeInsets.all(9),
        child: Column(
          children: [
            Container( // nicher background design
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                ),],
              ),

              child: Column( // eikhan theke profile suru
                children: [
                   CircleAvatar(
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      radius: 50,
                    ),
                  SizedBox(height: 15,),


                  const Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Colors.black),),

                  SizedBox(height: 4,),

                  const Text("Flutter Developer", style: TextStyle(fontSize: 20, color: Colors.black38),),
                  SizedBox(height: 5,),
                  const Text("Passionate about creating user-friendly and engaging digital experiences.", textAlign: TextAlign.center,style: TextStyle(fontSize: 16, color: Colors.black45),),

                  const SizedBox(height: 18),
                  Divider(),
                  const SizedBox(height: 5),

                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: ListTile(
                          leading: Icon(Icons.mail),
                          title: Text("john.doe@example.com"),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],

        ),
      )
    );

  }

}