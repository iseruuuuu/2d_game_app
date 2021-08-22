import 'package:flutter/material.dart';

class CrossKeyButton extends StatelessWidget {
  const CrossKeyButton({
    Key? key,
    required this.onTapRight,
    required this.onTapLeft,
    required this.onTapUp,
    required this.onTapDown,
  }) : super(key: key);

  final Function() onTapRight;
  final Function() onTapLeft;
  final Function() onTapUp;
  final Function() onTapDown;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap: onTapUp,
          child: Container(
            width: mediaSize / 9,
            height: mediaSize / 9,
            color: Colors.white10,
            child: const Center(
              child: Text(
                '↑',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: onTapLeft,
              child: Container(
                width: mediaSize / 9,
                height: mediaSize / 9,
                color: Colors.white10,
                child: const Center(
                  child: Text(
                    '←',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: mediaSize / 9,
              height: mediaSize / 9,
              color: Colors.white10,
            ),
            GestureDetector(
              onTap: onTapRight,
              child: Container(
                width: mediaSize / 9,
                height: mediaSize / 9,
                color: Colors.white10,
                child: const Center(
                  child: Text(
                    '→',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onTapDown,
          child: Container(
            width: mediaSize / 9,
            height: mediaSize / 9,
            color: Colors.white10,
            child: const Center(
              child: Text(
                '↓',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
