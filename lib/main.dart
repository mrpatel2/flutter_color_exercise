import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Exercise',
      home: CounterPage(),
    );
  }
}

// A StatefulWidget is required because state changes (counter, background color)
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  // TODO: Step 1 – Create a list of at least 5 colors
  // Example: List<Color> colors = [Colors.red, Colors.blue, ...];

  List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.teal,
];

  // TODO: Step 2 – Add a variable to track the current background color
  // Example: Color currentColor = Colors.white;

  void _increment() {
    setState(() {
      counter++;

      // TODO: Step 3 – Update currentColor each time the counter increments
      // Hint: Use counter % colors.length to cycle through colors
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Step 4 – Set backgroundColor of Scaffold to currentColor
      appBar: AppBar(title: Text("Counter + Color Exercise")),

      body: Center(
        child: Text(
          'Count: $counter',
          style: TextStyle(
            fontSize: 24,
            // TODO (Optional): Adjust text color for readability
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _increment, // Calls increment function
        child: Icon(Icons.add),
      ),
    );
  }
}