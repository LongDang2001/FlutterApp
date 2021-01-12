import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeck_demo/settings.dart';
import 'package:projeck_demo/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         //title: Text('The Action'),
         backgroundColor: Color.fromARGB(255, 224, 238, 255),
         title: SizedBox(
           child: Builder(
             builder: (context) {
               return Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 40,
                     child: FlatButton(
                       child: Image.asset('assets/group@3x3.png'),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return Settings();
                         }));
                       },
                     ),
                   ),
                   Container(
                     height: 40,
                     child: FlatButton(
                       child: Image.asset('assets/oval@2x.png'),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return Settings();
                         }));
                       },
                     ),
                   ),
                 ],
               );
             },
           )
         ),
       ),
       body: Container(
         color: Color.fromARGB(255, 224, 238, 255),
         padding: EdgeInsets.only(top: 70, left: 20, right: 20),
         child: Home()
       )
     ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 224, 238, 255),
        child: ListView(
          padding: EdgeInsets.only( top: 10, bottom: 10),
          children: [
            Container(
              height: 48,
              //margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Search'
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 75, 153, 255),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'All', style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 222, 235, 250),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Animails', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 222, 235, 250),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Vehicles', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 222, 235, 250),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Things', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 335,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new ExactAssetImage('assets/Con ga.png'),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 0,
                      blurRadius: 34,
                      offset: Offset(0, 12), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0.6),
                    end: Alignment(0.5, 1),
                    colors: [
                      Color.fromARGB(255, 255, 205, 0),
                      Colors.yellowAccent

                    ],
                    //tileMode: TileMode.repeated,
                  )
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Video();
                }));
              },
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 335,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 0,
                      blurRadius: 34,
                      offset: Offset(0, 12), // changes position of shadow
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    body: Container(
                      color: Colors.yellow,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                }));
              },
            ),
          ],
        ),
      )
    );
  }
}


