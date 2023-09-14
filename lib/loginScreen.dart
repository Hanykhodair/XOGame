import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Login Screen'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Player 1',
                fillColor: Colors.white70,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.green)),
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.deepOrange)

                )

              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              obscuringCharacter: '=',
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(25),
                ),
                fillColor: Colors.white70,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                  BorderSide(width: 2, color: Colors.green, style: BorderStyle.solid),
                ),
                focusColor: Colors.black,
                label: Text('Player 2'),
                prefixIcon: Icon(Icons.emoji_emotions),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed:() {

            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
