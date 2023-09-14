import 'package:flutter/material.dart';
import 'package:untitled/xo.dart';

class LoginScreen extends StatelessWidget {

  static const String routeName = 'lgScreen';

// String player1='';
// String player2 = '';
TextEditingController player1 = TextEditingController();
TextEditingController player2 = TextEditingController();
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
              // onChanged: (value) {
              //   player1 = value;
              // },
              controller: player1,
              textInputAction: TextInputAction.next,
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
              controller: player2,
              // onChanged: (value) {
              //   player2 = value;
              // },
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              // obscureText: true,
              // obscuringCharacter: '=',
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
                Navigator.pushNamed(context, XOGame.routeName);
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
