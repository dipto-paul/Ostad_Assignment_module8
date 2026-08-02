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
            Container( // nicher background design
              width: double.infinity,
              padding: EdgeInsets.all(15),
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
                  const Text("Passionate about creating user-friendly and engaging digital experiences.", textAlign: TextAlign.center,style: TextStyle(fontSize: 16, color: Colors.black),),

                  const SizedBox(height: 18),
                  Divider(),
                  const SizedBox(height: 5),

                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 18,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'john.doe@example.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 18,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '+123 456 7890',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                            child: Text("Follow",style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(child: OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text("Message",style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Divider(
                  color: Colors.grey, thickness: 1,
                )),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Interests',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff444444),
                    ),
                  ),
                ),

                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: Card(
                    child: Container(
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
                            height: 85,
                            width: double.infinity,
                            fit: BoxFit.cover,

                          ),

                          const SizedBox(height: 8),

                           Text(
                            'Travel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            'Exploring new places around the world',
                            style: TextStyle(color: Colors.grey,),
                          ),

                          const SizedBox(height: 10),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),

                              )
                            ),
                            child:  Text('View More', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [

                          Image.network(
                            'https://images.unsplash.com/photo-1516035069371-29a1b244cc32',
                            height: 85,
                            width: double.infinity,
                            fit: BoxFit.cover,

                          ),

                          const SizedBox(height: 8),

                           Text(
                            'Photography',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                           Text(
                            'Capturing moments through the lens', style: TextStyle(color: Colors.grey),
                          ),

                          const SizedBox(height: 10),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white54,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),

                                )
                            ),
                            child: const Text('View More', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );

  }

}