import 'package:flutter/material.dart';
import 'components/my_button.dart';
import 'in_de_crement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Counter App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Test Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
