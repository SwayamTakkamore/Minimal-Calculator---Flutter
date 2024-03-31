import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2B2D30)),
      ),
      home: const MyHomePage(
        title: 'Calculator',
      ),
      debugShowCheckedModeBanner: false,
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

  Widget buildButton(String buttonText) {
    return Container(
        width: 98,
        height: 125,
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 18),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(180),
            ),
            side: const BorderSide(
              color: Color(0xFF000000),
              width: 1,
            ),
            padding: const EdgeInsets.all(1),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'PollyRounded',
            ),
          )
        ),
    );
  }

  Widget buildButtonlarge(String buttonText) {
    return Container(
      alignment: Alignment.center,
      width: 196,
      height: 148, // Increase the height to compensate for the removed transform
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20), // Add padding to the top
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(180),
            ),
            side: const BorderSide(
              color: Color(0xFF000000),
            ),
            padding: const EdgeInsets.all(15),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'PollyRounded',
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B2D30),
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        )
      ),
      body: Container(
        color: const Color(0xFF2B2D30),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerRight,
              child: const Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PollyRounded',
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 20,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildButton('7'),
                    buildButton('8'),
                    buildButton('9'),
                    buildButton('÷'),
                  ],

                ),
                Row(
                  children: [
                    buildButton('4'),
                    buildButton('5'),
                    buildButton('6'),
                    buildButton('×'),
                  ],
                ),
                Row(
                  children: [
                    buildButton('1'),
                    buildButton('2'),
                    buildButton('3'),
                    buildButton('-'),
                  ],
                ),
                Row(
                  children: [
                    buildButton('.'),
                    buildButton('0'),
                    buildButton('00'),
                    buildButton('+'),
                  ],
                ),
                Row(
                  children: [
                    buildButtonlarge('Clear'),
                    buildButtonlarge('='),
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
