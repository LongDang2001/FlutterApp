import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeck_demo/inApp.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }
}
class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(224, 238, 255, 1),
          title: SizedBox(
            height: 36,
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Image.asset('assets/group@3x.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          color: Color.fromRGBO(224, 238, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 1:
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 14, left: 16 ),
                height: 112,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Hand Puppet Pro',
                        style: TextStyle(
                            fontSize: 17,
                            letterSpacing: -0.41,
                            color: Colors.black
                        ),
                      ),

                    ),
                    Container(
                      //margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Access all tutorial',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: -0.24,
                            color: Color.fromRGBO(60, 60, 67, 0.6)
                        ),
                      ),
                    ),
                    Container(
                     margin: EdgeInsets.only(left: 0),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        autofocus: true,
                        child: Text('One time payment, only 0,99\$',
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: -0.24,
                              color: Color.fromRGBO(75, 153, 255, 1)
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return InAppPage();
                          }));

                        },
                      )
                    )
                  ],
                ),
              ),
              //: 2
              Container(
                padding: EdgeInsets.only(left: 16),
                margin: EdgeInsets.only(top: 16, bottom: 16),
                height: 68,
                alignment: Alignment.centerLeft,
                child: Text('Help & Support',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: -0.24,
                    color: Colors.black
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
              ),
              // 3:
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 68,
                alignment: Alignment.centerLeft,
                child: Text('Rate Us',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
              ),
              // 4:
              Container(
                padding: EdgeInsets.only(left: 16),
                margin: EdgeInsets.only(top: 16, bottom: 16),
                height: 68,
                alignment: Alignment.centerLeft,
                child: Text('Term Of Use',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
              ),
              // 5:
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 68,
                alignment: Alignment.centerLeft,
                child: Text('Privacy Policy',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
              ),
              // 6:
              Container(
                height: 64,
                margin: EdgeInsets.only(top: 16, bottom: 16),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 256,
                      child: Text('Stand your phone and use phone'
                          ' flashlight to make the shadow on the wall',
                        style: TextStyle(
                            fontSize: 13,
                            letterSpacing: -0.08,
                            color: Color.fromRGBO(60, 60, 67, 0.5)
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    FlatButton(
                      child: Container(
                        //margin: EdgeInsets.only(right: 20),
                        height: 24,
                        child: Image.asset('assets/group@3x.png'),
                      ),
                      onPressed: () {

                      },
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}