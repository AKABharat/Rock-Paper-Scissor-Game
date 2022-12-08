import 'dart:io';
import 'dart:math';

enum move { rock, paper, scissor }

void main() {
  // display prompt about user interface , aking user about there choice
  final range = Random();
  while (true) {
    const Display = '''

*************** Rock 🪨  Paper 📜 Scissor ✂️  ***************

Please enter your choice -
            _________________
            |               |
            |  Rock    'r'  |
            |  Paper   'p'  |
            |  Scissor 's'  |
            |  Quite   'q'  |
            |_______________|
''';
    print(Display);
    stdout.write('Enter your choice => ');
    // to read input we use 'stdin' class present in dart.io library , which has a method called 'readLineSync();
// read user input from console
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var PlayerMove;
      if (input == 'r') {
        PlayerMove = move.rock;
      } else if (input == 'p') {
        PlayerMove = move.paper;
      } else {
        PlayerMove = move.scissor;
      }

      print('You chose  => ${PlayerMove}');

      final random = range.nextInt(3); // range variable range is upto 3 only
      final AImove = move.values[
          random]; // random will contain 1 , 2 , 3  and values will return the value at given random number ( from 1 or 2 or 3)

      print('AI chose   => $AImove');

      if (PlayerMove == AImove) {
        print('Draw');
      } else if (PlayerMove == move.rock && AImove == move.paper ||
          PlayerMove == move.paper && AImove == move.scissor ||
          PlayerMove == move.scissor && AImove == move.rock) {
        print('YOU WIN !!!');
      } else {
        print('AI WINS');
      }
    } else if (input == 'q') {
      print('Exiting....');
      break;
    } else {
      print('Invalid Input 😬');
    }
  }
  // print(input);
// if input is valid more from "p" , "q" , "r"
}
