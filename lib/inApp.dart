import 'package:flutter/material.dart';
class InAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InAppState();
  }
}
class InAppState extends State<InAppPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(224, 238, 255, 1),
          title: SizedBox(
            height: 30,
            child: Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Image.asset('assets/group@3x.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          color: Color.fromRGBO(224, 238, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Container(
                  height: 148,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 24, bottom: 12),
                        alignment: Alignment.center,
                        child: Text(
                          'Hand Puppet Pro',
                          style: TextStyle(
                              fontSize: 28,
                              letterSpacing: 0.36,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w900

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        alignment: Alignment.center,
                        child: Text(
                          'Access all tutorial',
                          style: TextStyle(
                              fontSize: 17,
                              letterSpacing: -0.41,
                              color: Color.fromRGBO(60, 60, 67, 0.6)

                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'One time payment, only 0,99\$',
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: -0.24,
                              color: Color.fromRGBO(75, 153, 255, 1)

                          ),
                        ),
                      )
                    ],
                  ),
                ),
              // 2:
              Container(
                height: 56,
                width: 129,
                margin: EdgeInsets.only(top: 400),
                decoration: BoxDecoration(
                    //color: Color.fromRGBO(75, 153, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue
                ),
                child: TextButton(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Continue',
                        style: TextStyle(
                            fontSize: 17,
                            letterSpacing: -0.41,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}