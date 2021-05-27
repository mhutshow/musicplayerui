import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:musicplayer/Screens/PlayerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PlayerScreen();
                },));
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('Assets/album.png'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 110,
                        left: 100,
                        child: Container(
                          child: Column(
                            children: [
                              Text('Now Playing',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10,),
                              Text(
                                'Venge Porona Evabe',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Pritom Hasan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ganchil Music',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        width: 200,
                        left: 70,
                        child: Image.asset(
                          'Assets/icon.png' ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/background.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SongHolder(
                          imagePath: 'Assets/background.png',
                          index: '1.',
                          isPlaying: true,
                          title: 'Venge Porona Evabe\nPritom Hasan',
                        ),
                        SongHolder(
                          imagePath: 'Assets/1.jpg',
                          index: '2.',
                          isPlaying: false,
                          title: 'Khula janala\nTahsin Ahmed',
                        ),
                        SongHolder(
                          imagePath: 'Assets/artcell.jpg',
                          index: '3.',
                          isPlaying: false,
                          title: 'Oniket Prantor\nArtcell',
                        ),   SongHolder(
                          imagePath: 'Assets/nemesis.jpg',
                          index: '4.',
                          isPlaying: false,
                          title: 'Ghuri\nNemesis',
                        ),   SongHolder(
                          imagePath: 'Assets/band.jpg',
                          index: '5.',
                          isPlaying: false,
                          title: 'In My Blood\nAshes Remain',
                        ),   SongHolder(
                          imagePath: 'Assets/background.png',
                          index: '6.',
                          isPlaying: false,
                          title: 'Love Story\nTaylor Swift',
                        ),
                        SongHolder(
                          imagePath: 'Assets/ghum.jpg',
                          index: '7.',
                          isPlaying: false,
                          title: 'Dushopno\nOddSignature',
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SongHolder extends StatelessWidget {
  SongHolder({this.imagePath, this.title, this.index, this.isPlaying: false});
  final String imagePath;
  final String title;
  final String index;
  final bool isPlaying;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                index,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(
            isPlaying ? Icons.music_note_outlined : Icons.more,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
