import 'package:flutter/material.dart';
import 'package:location/layouts/sample_layout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Layout Demo',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: const Main(),
    routes: {
      '/sample/': (context) => const SampleLayoutView(),
    },
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Widget> Feed = <Widget>[];

  Widget _generateTile(Icon i, String songTitle, String singer, int likes) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          i,
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songTitle,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  singer,
                  style: TextStyle(color: Colors.white54, fontSize: 15),
                )
              ],
            ),
          ),
          const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Icon(Icons.thumb_up, color: Colors.white),
                Text(
                  likes.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    for(int i = 0; i < 20; i++){
      Feed.add(_generateTile(Icon(Icons.music_note_rounded, color: Colors.white,), "Just a Song tile $i", "ft. Me - Prog", i + 10));
    }
    Widget optionList = Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "My Music",
                style: TextStyle(color: Colors.grey),
              )),
          TextButton(
              onPressed: () {},
              child: Text("Shared", style: TextStyle(color: Colors.grey))),
          TextButton(
              onPressed: () {},
              child: Text("Feed", style: TextStyle(color: Colors.grey))),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradient"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(235, 100, 100, 1),
        elevation: 0,
        leading: const Icon(Icons.music_note_rounded),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.add,
              size: 40,
            ),
          )
        ],
      ),
      body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(235, 100, 100, 1),
                  Colors.purple,
                  Colors.blue
                ]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: optionList,
              ),
              Expanded(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    children: Feed
                ),
              ),
            ],
          )),
    );
  }
}
