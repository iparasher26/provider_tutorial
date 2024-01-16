import 'package:flutter/material.dart';
import 'dart:async';

class WhyProvider extends StatefulWidget {
  const WhyProvider({Key? key}) : super(key: key);

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {

  int count=0;

  @override
  void initState() {
    // THIS PART IS CALLED BEFORE THE BUILD STATE
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});  // setting state changes in stateful widget
     },
    );
  }
  @override
  Widget build(BuildContext context) {
    print('build$count');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:
          Text(
            '${DateTime.now(). hour}:${DateTime.now().minute}:${DateTime.now().second}',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          ),
          Center(child:
          Text(
            count.toString(),
            style: Theme.of(context).textTheme.displaySmall,
           ),
          ),
        ],
      ),
    );
  }
}
