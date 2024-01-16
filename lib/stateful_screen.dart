import 'package:flutter/material.dart';

class HomeScreen_stateful extends StatefulWidget {
  const HomeScreen_stateful({Key? key}) : super(key: key);

  @override
  State<HomeScreen_stateful> createState() => _HomeScreen_statefulState();
}

class _HomeScreen_statefulState extends State<HomeScreen_stateful> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child:
            Text(count.toString(), style: Theme.of(context).textTheme.displaySmall,),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count);
          setState(() {}); //rebuild the entire thing so the screen updates
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

