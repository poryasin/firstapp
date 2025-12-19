import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageStage();
}

class _CalculatePageStage extends State<CalculatePage> {

  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Change Calculation",style: TextStyle(fontFamily: "maa",fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color: Colors.deepPurple,backgroundColor: Colors.pink ,),),
            SizedBox(height: 20,),
            Image.asset("assets/catmeow.jpg",height: 100,),
            SizedBox(height: 20,),
            Image.network('https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzd3ZDBibmc2bGg5eXI4bnpnMWduYWVybzdoeDViZzRrMnk0N2E3biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3o85gdhlpxVz8TjsTC/giphy.gif',height: 100,),
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
        ), //ListView
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



