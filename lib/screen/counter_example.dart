import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context,listen: false);

    print("BUILD will build once... ");

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterExample"),
      ),
      body: Center(
          child: Consumer<CountProvider>(builder: (context,value,child){
            print("Now TEXT NUMBER rebuilds every time we increment!");
            return Text(
            countProvider.count.toString(),
            style: const TextStyle(fontSize: 50),
           );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Now SETCOUNT() rebuilds every time we increment!");
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
