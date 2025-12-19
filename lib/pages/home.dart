import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          Mybox(),
          SizedBox(height: 24),
          Mybox(),
          SizedBox(height: 24),
          Mybox(),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget Mybox() {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image:NetworkImage("https://marketplace.canva.com/EAGNn5cWAw0/2/0/1600w/canva-lavender-cute-floral-night-sky-girl-quote-desktop-wallpaper-9-4zChSTp_g.jpg"),fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What is computer?", style: TextStyle(fontSize: 25)),
          Text(
            "A computer is a machine that can be programed to carry out sequences of arithmetic.",
          ),
        ],
      ),
    );
  }
}
