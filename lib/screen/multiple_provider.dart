import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';

class MultipleProvider extends StatefulWidget {
  const MultipleProvider({Key? key}) : super(key: key);

  @override
  State<MultipleProvider> createState() => _MultipleProviderState();
}

class _MultipleProviderState extends State<MultipleProvider> {
  @override
  Widget build(BuildContext context) {
    final sliderProvider=Provider.of<SliderProvider>(context,listen: false);
    print("X  main build  X");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Example for multiple providers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(builder: (context , value, child){
              print("slider");
              return Slider(
                min: 0,
                max: 1,
                value: value.val,
                onChanged: (value1) {
                  value.setValue(value1);
                },
              );
            }),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Consumer<SliderProvider>(builder: (context,value,child) {
                        print(
                            "container 1");
                        return Container(
                          height: 100,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow.withOpacity(value.val),
                        ),
                          child: const Center(
                          child: Text(
                            "Container 1",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                       );
                      }
                    ),
                   ),
                  SizedBox(width: 20,),
                  Expanded(
                      child: Consumer<SliderProvider>(builder: (context,value,child){
                        print("container 2");
                        return  Container(
                            height: 100,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber.withOpacity(value.val),
                        ),
                         child: const Center(
                            child: Text(
                            "Container 2",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                           ),
                          ),
                        );
                      }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
