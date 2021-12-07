import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() => counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarW(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 100.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Image.asset(
                'flutter_logo_1080.png',
                width: 100.0,
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.red,
                  child: const Text(
                    "Decrement",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: decrementCounter,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.green,
                  child: const Text(
                    "Increment",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: incrementCounter,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AppBarW extends StatelessWidget with PreferredSizeWidget {
  const AppBarW({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person_add_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.video_call),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.verified_user),
              onPressed: () {},
            ),
          ],
        )));
  }
}
