import 'package:flutter/material.dart';
import 'package:untitled/game_btn.dart';

class XOGame extends StatefulWidget {

static const String routeName = 'mainScreen';
  @override
  State<XOGame> createState() => _XOGameState();
}

class _XOGameState extends State<XOGame> {
  List<String>board=[
    "","","",
    "","","",
    "","",""
  ];

  int score1=0;
  int score2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('XO Game'),
      actions: [
        IconButton(onPressed:(){}, icon: Icon(Icons.abc))
      ],),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Player 1',
                    style: TextStyle(fontSize: 35),),
                    Text('$score1', style: TextStyle(
                        fontSize:35 ),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Player 2', style: TextStyle(
                      fontSize: 35
                    ),),
                    Text('$score2',
                      style: TextStyle(fontSize: 35),),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn(board[0],onBtnClick,0),
                GameBtn(board[1],onBtnClick,1),
                GameBtn(board[2],onBtnClick,2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn(board[3],onBtnClick,3),
                GameBtn(board[4],onBtnClick,4),
                GameBtn(board[5],onBtnClick,5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GameBtn(board[6],onBtnClick,6),
                GameBtn(board[7],onBtnClick,7),
                GameBtn(board[8],onBtnClick,8),
              ],
            ),
          ),        ],
      ),
    );
  }

  int counter = 1;

  onBtnClick(index){
    if (board[index].isNotEmpty) return;
    if (counter.isOdd){
      board[index]='X';
      score1++;
      bool win = checkWinner('X');
      if(win){
        score1+=10;
        resetBoard();
      }
    }
    else{
      board[index]='O';
      score2++;
      bool win = checkWinner('O');
      if (win){
        score2+=10;
        resetBoard();
      }
    }
    if (counter ==9){
      resetBoard();
    }
    setState(() {
      counter++;
    });

  }
  checkWinner(String symbol){

    for(int i =0; i<9; i+=3){
      if(board[i]==symbol && board[i+1]==symbol && board[i+2]==symbol){
        return true;
      }
    }

    for(int i=0; i<3; i++){
      if(board[i]==symbol && board[i+3]==symbol && board[i+6]==symbol){
        return true;
      }
    }

    if(board[0]==symbol && board[4]==symbol && board[8]==symbol)
      {
        return true;
      }
    if(board[2]==symbol && board[4]==symbol && board[6]==symbol)
      {
        return true;
      }
    return false;
  }

  resetBoard()
  {
    board=[
      "","","",
      "","","",
      "","",""
    ];
    counter =0;
  }
}
