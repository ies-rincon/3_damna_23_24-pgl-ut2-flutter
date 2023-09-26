import 'package:flutter/material.dart';

class HelloWorldDamPglPage extends StatefulWidget {
  const HelloWorldDamPglPage({super.key, required this.title});

  final String title;

  @override
  State<HelloWorldDamPglPage> createState() => _HelloWorldDamPglPageState();
}

class _HelloWorldDamPglPageState extends State<HelloWorldDamPglPage> {
  int _counter = 0;

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Starred:',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 48,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://user-images.githubusercontent.com/2319867/86044021-5ceba400-b9fe-11ea-9664-6ffb2db31b3c.png',
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.white, // Change to your desired background color
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.thumb_down),
                  ),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.thumb_up),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
