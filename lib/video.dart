import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';


class Video extends StatefulWidget {
  Video({Key key}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    return VideoState();
  }
}

class VideoState extends State<Video> {
  VideoPlayerController _controllerGa;
  Future<void> _initializeVideoPlayerFuture;
  ChewieController _chewieControllerGa;
  @override
  void initState() {
    _controllerGa = VideoPlayerController.asset('assets/Cua.mp4');
    _initializeVideoPlayerFuture = _controllerGa.initialize();
    _chewieControllerGa = ChewieController(
        videoPlayerController: _controllerGa,
        autoPlay: true,
        looping: true
    );
    //print(File("assets/con thỏ.mp4").exists());
    super.initState();
  }
  @override
  void dispose() {
    _controllerGa.dispose();
    _chewieControllerGa.dispose();
    super.dispose();
  }
  bool checkButton = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(243, 248, 255, 1),
          title: SizedBox(
            child: Container(
              height: 36,
              child: Align(
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
        ),
        body: Container(
          color: Color.fromRGBO(243, 248, 255, 1),
          padding: EdgeInsets.only(top: 16,left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 16),
                height: 190,
                color: Colors.yellow,
                child: FutureBuilder(

                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapShot) {
                    return Expanded(
                      child: _chewieControllerGa.videoPlayerController.value.initialized &&
                      _chewieControllerGa.isPlaying != null ? Chewie(
                          controller: _chewieControllerGa): Expanded(child: Container(
                        color: Colors.yellow,
                      )),
                    );
                  },
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(15),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Color.fromRGBO(0, 0, 0, 0.5),
                //       blurRadius: 34,
                //       spreadRadius: 0,
                //       offset: Offset(0,12)
                //     )
                //   ]
                // ),
              ),
              // text
              Container(
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 36,
                      width: 256,
                      child: Text(
                        'Stand your phone and use phone flashlight to make the shadow on the wall',
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: -0.08,
                          color: Color.fromRGBO(60, 60, 67, 0.5)
                        ),
                      ),
                    ),
                    Container(
                      height: 34,
                      //margin: EdgeInsets.only(right: 20),
                      child: FlatButton(
                        child: Image.asset('assets/group@3x.png'),
                        onPressed: () {

                        },
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(7, 12, 21, 0.02),
                          blurRadius: 34,
                          spreadRadius: 0,
                          offset: Offset(0,12)
                      )
                    ]
                ),
              ),
              // Button
              Container(
                height: 56,
                width: 129,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(75, 153, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(7, 12, 21, 0.02)
                    )
                  ]
                ),
                ////

                child: TextButton(
                  child: Text(
                    checkButton ? 'I did it!': 'V',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      letterSpacing: -0.41,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      checkButton =! checkButton;
                    });
                  },
                ),
              ),
              // button den pin
              Container(
                height: 72,
                width: 72,
                margin: EdgeInsets.only(top: 200),
                child: checkButton ? Image.asset('assets/group2@3x.png'):Image.asset('assets/group2@3xx.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}