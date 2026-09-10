import 'package:flutter/material.dart';
import 'components/my_button.dart';
import 'in_de_crement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Counter App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Test Counter App'),
      debugShowCheckedModeBanner: false, // debugbanner entfernen
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

  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Counter:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyButton( // button vordefiniert in my_button.dart
            text: '+',
            onTap: (){
              setState(() { //  set state um zu sagen das sich der Wert geändert hat und die UI neu aufgebaut werden muss
                _counter = incrementCounterBy(_counter,1);
              });
            },
            color: Colors.green,
          ),
          MyButton(
            text: '+2',
            onTap: (){
              setState(() {
                _counter = incrementCounterBy(_counter,2);
              });
            },
            color: Colors.blue,
          ),
          MyButton(
            text: '-',
            onTap: (){
              setState(() {
                _counter = decrementCounterBy(_counter,1);
              });
            },
            color: Colors.red,
          ),
          MyButton(
            text: '-2',
            onTap: (){
              setState(() {
                _counter = decrementCounterBy(_counter,2);
              });
            },
            color: Colors.orange,
          ),
          MyButton(
            text: '*2',
            onTap: (){
              setState(() {
                _counter = multiplyCounterBy(_counter, 2);
              });
            },
            color: Colors.purple,
          ),
          MyButton(
            text: '/2',
            onTap: (){
              setState(() {
                _counter = halfCounter(_counter);
              });
            },
            color: Colors.teal,
          ),
          
        ],
      ),
    );
  }
}
