import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(37, 21, 255, 0.87)),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color.fromARGB(234, 0, 0, 0),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            color: Color.fromARGB(234, 0, 0, 0),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('WeatherApp'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) => ListTile(
                title: Text(
                  'Mogilev',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Text(
                  'Cloudy',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
