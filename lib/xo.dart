import 'package:flutter/material.dart';
import 'package:untitled/game_btn.dart';

class XOGame extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('XO Game'),),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Player 1'),
                    Text('0'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Player 2'),
                    Text('0'),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn('x'),
                GameBtn('O'),
                GameBtn('X'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn('x'),
                GameBtn('O'),
                GameBtn('X'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn('x'),
                GameBtn('O'),
                GameBtn('X'),
              ],
            ),
          ),        ],
      ),
    );
  }
}
