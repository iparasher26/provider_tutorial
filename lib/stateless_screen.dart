import 'package:flutter/material.dart';

class HomeScreen_stateless extends StatelessWidget {
  HomeScreen_stateless({Key? key}) : super(key: key);

  int x=0;
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
            Text(x.toString(), style: Theme.of(context).textTheme.displaySmall,),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
