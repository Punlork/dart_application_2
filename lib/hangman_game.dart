import 'dart:io';
import 'dart:math';

void main() {
  int chace = 5;
  print('You have 5 chances: $chace');
  List<String> words = ['car', 'apple', 'phone', 'dog', 'orange'];
  var blank = [];
  Random random = Random();
  String element = words[random.nextInt(words.length)];
  print(element);
  for (int i = 0; i < element.length; i++) {
    blank.add('_');
  }

  while (true) {
    stdout.write('Take a guess: ${blank.join('')} ');
    String input = stdin.readLineSync()!;
    if (element.contains(input)) {
      for (int i = 0; i < element.length; i++) {
        var letter = element[i];
        if (letter == input) {
          blank[i] = input;
        }
      }
      if (blank.join('') == element) {
        print(blank.join(''));
        print('You win!');
        break;
      }
    } else {
      chace -= 1;
      if (chace == 0) {
        print('Game Over');
        break;
      }
      print('You have $chace chances left');
    }
  }
}
