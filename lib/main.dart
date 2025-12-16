import 'package:firstapp/pages/cal.dart';
import 'package:firstapp/pages/contact.dart';
import 'package:firstapp/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'firstapp',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.pink)),
      home: const MyHomePage(title: 'porya shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variables

  int _currentIndex = 0;
  final tabs = [HomePage(),CalculatePage(),ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _currentIndex,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),
        BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: "Contact")
      ],
        onTap: (index){
        setState(() {
          print(index);
          _currentIndex=index;
        });
      }), 
    );
  }
}
