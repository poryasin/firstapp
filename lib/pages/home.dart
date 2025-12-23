import 'package:firstapp/pages/detail.dart';
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
    MyBox(
      "What is a computer?",
      "A computer is a device used to calculate and perform tasks.",
      "https://cdn.pixabay.com/photo/2016/03/26/13/09/workspace-1280538_960_720.jpg",
    ),
     SizedBox(height: 24),

    MyBox(
      "What is Flutter?",
      "Flutter is a framework for building mobile applications.",
      "https://cdn.pixabay.com/photo/2015/12/01/08/42/banner-1071789_960_720.jpg",
    ),
    const SizedBox(height: 24),

    MyBox(
      "What is Dart?",
      "Dart is the programming language used by Flutter.",
      "https://cdn.pixabay.com/photo/2016/12/31/16/52/dart-1943313_960_720.jpg",
    ),
  ],
),  
    );
  }

  Widget MyBox(String title, String subtitle, String imageUrl) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image:NetworkImage("https://static.vecteezy.com/system/resources/previews/045/893/199/non_2x/soft-pink-gradient-background-y2k-aesthetic-blurred-wallpaper-abstract-banner-vector.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8,),
            Text(subtitle, style: TextStyle(color: Colors.white),)
          ,
          TextButton(onPressed: (){
            print("next page >>");
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
          },child: Text("Read more",)
          )
        ]
      ),
    );
  }
}



