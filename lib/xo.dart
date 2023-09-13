import 'package:flutter/material.dart';

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
                Expanded(
                  child: ElevatedButton(onPressed:() {

                  }, child: Text('X'),),
                ),
                Expanded(
                  child: ElevatedButton(onPressed:() {

                  }, child: Text('X'),),
                ),
                Expanded(
                  child: ElevatedButton(onPressed:() {

                  }, child: Text('X'),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
                ElevatedButton(onPressed:() {

                }, child: Text('X'),),
              ],
            ),
          ),        ],
      ),
    );
  }
}
