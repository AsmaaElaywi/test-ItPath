import 'package:app1/tasks/onboarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(
            255,
            36,
            202,
            253,
          ), // Your primary color (example)
          primaryContainer: Color(
            0xFFF5A623,
          ), // A complementary variant of primary
          secondary: Color.fromARGB(
            255,
            107,
            115,
            157,
          ), // Vibrant green for accents
          secondaryContainer: Color(
            0xFFD0F2C7,
          ), // A softer, lighter green shade
          background: Colors.white,
          surface: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
        ),
        // … other properties
      ),
      // home: const BulbPage(),
      //home: const PersonalPage(),
      home: const OnboardingView(),
      //home: ProductsView(),
    );
  }
}

// theme: ThemeData(
//         brightness: Brightness.light,
//         colorScheme: const ColorScheme(
//           brightness: Brightness.light,
//           primary: Color(0xFFFDAC24), // Your primary color (example)
//           primaryContainer: Color(
//             0xFFF5A623,
//           ), // A complementary variant of primary
//           secondary: Color(0xFF00A859), // Vibrant green for accents
//           secondaryContainer: Color(
//             0xFFD0F2C7,
//           ), // A softer, lighter green shade
//           background: Colors.white,
//           surface: Colors.white,
//           error: Colors.red,
//           onPrimary: Colors.white,
//           onSecondary: Colors.white,
//           onSurface: Colors.black,
//           onBackground: Colors.black,
//           onError: Colors.white,
//         ),
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
