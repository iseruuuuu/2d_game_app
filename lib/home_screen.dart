import 'package:flutter/material.dart';
import 'component/a_button.dart';
import 'component/b_button.dart';
import 'component/cross_key_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int numberInRow = 10;
  int numberOfSquares = numberInRow * 16;
  int player = numberInRow * 15 + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: numberOfSquares,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: numberInRow,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      color: Colors.grey,
                      child: Center(child: Text(index.toString())),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CrossKeyButton(
                  onTapLeft: () {},
                  onTapRight: () {},
                  onTapDown: () {},
                  onTapUp: () {},
                ),
                AButton(
                  onTap: () {},
                ),
                BButton(
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}