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
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Change Calculation",style: TextStyle(fontFamily: "maa",fontSize: 48, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color: Colors.deepPurple,backgroundColor: Colors.pink ,),),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: priceTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: amountTextField(),
            ),
            calculateButton(),
            showTotalText(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: recieveMoneyTextField(),
            ),

            changecalculateButton(),
            showChangeText(),
          ],
        ),
      ),
    );
    
  }

  Widget calculateButton() {
    return ElevatedButton(
      onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _total = double.parse(price.text) * double.parse(amount.text);
          });
        }
      },
      child: Text('Calculate Total'),
    );
  }

  Widget priceTextField() {
    return TextField(
      controller: price,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'price per item',
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget amountTextField() {
    return TextField(
      controller: amount,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'amount of items',
      ),
      keyboardType: TextInputType.number,
    );
  }


  Widget showTotalText() {
    return Text("Total :$_total Bath");
  }

  Widget recieveMoneyTextField() {
    return TextField(
      controller: change,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'get money',
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget changecalculateButton() {
    return ElevatedButton(
      onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _change = double.parse(change.text) - _total;
          });
        }
    }, child: Text('Calculate Change'));
  }

  Widget showChangeText() {
    return Text("Change :$_change Bath");
  }
}

