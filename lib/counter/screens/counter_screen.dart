import 'package:flutter/material.dart';
import 'package:my_counter_app/counter/models/counter.dart';
import 'package:my_counter_app/counter/widgets/custom_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  Counter counter = Counter(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counter = counter.reset();
              });
            },
          ),
        ],
        title: const Center(child: Text('Counter')),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text('${counter.value}', style: const TextStyle(
              fontSize: 160, 
              fontWeight: FontWeight.w100
              )),
              Text('Click${counter.value == 1 ? 's' : ''}', 
              style: const TextStyle(fontSize: 25
              )),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_outlined, onPressed: () {
            setState(() {
              counter = counter.reset();  
            });
          }),
          const SizedBox(height: 15),
          CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: () {
            setState(() {
              counter = counter.decrement();  
            });
          }),
          const SizedBox(height: 15),
          CustomButton(icon: Icons.plus_one, onPressed: () {
            setState(() {
              counter = counter.increment();
            });
          }),
        ],
      ),
    );
  }
}
