import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleLayoutView extends StatefulWidget {
  const SampleLayoutView({Key? key}) : super(key: key);
  @override
  State<SampleLayoutView> createState() => _SampleLayoutViewState();
}

class _SampleLayoutViewState extends State<SampleLayoutView> {
  @override
  Widget build(BuildContext context) {
    Widget textSection = Container(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: Text(
          textAlign: TextAlign.justify,
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar at enim at feugiat. Nulla egestas iaculis velit id auctor. Praesent ac malesuada nisi. Duis eleifend, ante sed pretium suscipit, mi enim blandit velit, nec tristique lorem massa sit amet justo. Suspendisse varius ac nisi non feugiat. In feugiat dignissim odio sit amet tincidunt. "),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.call, color: Colors.blue, size: 30),
            Text(
              "Call",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Column(
          children: const [
            Icon(Icons.route, color: Colors.blue, size: 30),
            Text(
              "Route",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Column(
          children: const [
            Icon(Icons.share, color: Colors.blue, size: 30),
            Text(
              "Route",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ],
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Some remote location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "On a known country",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41")
        ],
      ),
    );
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Image.asset('assets/images/landscape.webp',),
            titleSection,
            buttonSection,
            textSection
          ],
        )
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
