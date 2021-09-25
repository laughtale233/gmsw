import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const MaterialApp(home: HomePageRoute());
}

class HomePageRoute extends StatefulWidget {
  const HomePageRoute({Key? key}) : super(key: key);

  @override
  _HomePageRouteState createState() => _HomePageRouteState();
}

class _HomePageRouteState extends State<HomePageRoute> {
  String? _word;
  String? _wordPair;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _word = generateWordPairs()
                        .take(1)
                        .toList()
                        .first
                        .first
                        .toLowerCase();
                    setState(() {});
                  },
                  child: const Text('Give me a word',
                      style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 30),
                Text(_word ?? '', style: const TextStyle(fontSize: 30)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _wordPair =
                        generateWordPairs().take(1).toList().first.asLowerCase;
                    setState(() {});
                  },
                  child: const Text('Give me a word pair',
                      style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 30),
                Text(_wordPair ?? '', style: const TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
