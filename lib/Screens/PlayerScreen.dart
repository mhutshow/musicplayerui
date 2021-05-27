import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key key}) : super(key: key);

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}
double sliderValue;
double height;
double width;
bool playing=false;

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('Assets/background.png'),
                )),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Container(
                  height: 50,
                  width: width - 40,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white10,
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //this will be two function button for search music
                        Row(
                          children: [
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(width: 10),
                            Text('Search',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Icon(Icons.mic, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: width - 50,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Venge Porona Evabe',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.7) , fontWeight: FontWeight.bold)),
                        Text('Pritam Hasan',
                            style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.5)))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height/5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 42 , left: 43 , right : 42, bottom : 20),
                      child: Container(
                        height: width-80,
                        width : width -80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width),
                          gradient: LinearGradient(
                            colors: [Color(0xFF177281), Color(0xFF31BAC7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            //It gives a glow effect
                            BoxShadow(
                              color: Color(0xFF31BAC7),
                              offset: Offset(8,6),
                              blurRadius: 12,
                            ),
                            BoxShadow(
                              color: Color(0xFF31BAC7),
                              offset: Offset(-8,-6),
                              blurRadius: 12,
                            ),
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: CircleAvatar(
                            backgroundImage: Image.asset('Assets/album.jpg').image,
                          ),
                        )
                      ),
                    ),
                    Container(
                      height : 92,
                      width : width -50,
                      child: SingleChildScrollView(
                        child: Text(
                          //This is lyrics off  the song .. will get it from server later
                          'Lyrics:\nযখন সন্ধ্যা নেমে জোনাকিরা আসে \n আর ফুলগুলো সুবাস ছড়ায় রাতে, \n তোমার ঘরের পুতুল তখন\nচুপ অভিমানে ঘরে ফিরে যায় ভাঙ্গা মনে\nতাইতো রাত আমায় বলে তুমি ভেঙ্গে পড়োনা এভাবে\nকেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না এই রাতে। ও চাঁদ, বলোনা সে লুকিয়ে আছে কোথায়? সে কি খুব কাছের তারাটা তোমার সে কি করেছে অভিমান আবার, হঠাৎ সে চলে গেছে শূন্যতা যেন এ ঘরে, তাই তো রাত আমায় বলে .. তুমি ভেঙ্গে পড়োনা এভাবে কেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না রাতে তুমি ভেঙ্গে পড়োনা এভাবে কেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না এই রাতে।',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'lima'
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width : width ,
                      child: Slider(
                        activeColor: Colors.white,
                        value : sliderValue??0,
                        min : 0,
                        max : 200,
                        onChanged: (value){
                          setState(() {
                            //Here seek function will be called
                            sliderValue=value;
                            print(value);
                          });
                        },
                      )
                    ),
                    Container(
                      width: width ,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left : 30 , right : 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "1:50",
                                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                                ),
                                Text(
                                  "4.03",
                                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20 , right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed:(){
                                    //Shuffle
                                  },
                                  icon: Icon(
                                    Icons.shuffle,
                                    color: Colors.white.withOpacity(0.8),
                                    size: 25
                                  ),
                                ),
                                IconButton(
                                  onPressed:(){
                                    //song previous
                                  },
                                  icon: Icon(
                                      Icons.skip_previous,
                                      color: Colors.white.withOpacity(0.8),
                                      size: 25
                                  ),
                                ),
                                IconButton(
                                    iconSize: 50,
                                    icon: Container(
                                      decoration:
                                      BoxDecoration(shape: BoxShape.circle, color: playing ? Color(0xFF31BAC7) : Colors.red),
                                      child: Center(
                                        child: Icon(
                                          playing
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          size: 28,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        playing = !playing;
                                      });
                                    }),
                                IconButton(
                                  onPressed:(){
                                    //song next
                                  },
                                  icon: Icon(
                                      Icons.skip_next,
                                      color: Colors.white.withOpacity(0.8),
                                      size: 25
                                  ),
                                ),
                                IconButton(
                                  onPressed:(){
                                    //share
                                  },
                                  icon: Icon(
                                      Icons.share,
                                      color: Colors.white.withOpacity(0.8),
                                      size: 25
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
