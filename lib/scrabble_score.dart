import 'dart:io';

class Word {
  Map<int, String> letters = {
    1: 'A, E, I, O, U, L, N, R, S, T',
    2: 'D, G',
    3: 'B, C, M, P',
    4: 'F, H, V, W, Y',
    5: 'K',
    8: 'J, X',
    10: 'Q, Z',
  };
}

void main() {
  var word = Word();

  stdout.write('Enter a word: ');
  String input = stdin.readLineSync()!.toUpperCase();
  print(input);
  print(word.letters.values);
  var dug = word.letters.values.toString().contains(input);
  var don = word.letters.containsValue(input);
  var dah = word.letters.containsKey(input);
  print(dug);
  print(don);
  print(dah);
  if (word.letters.containsValue(input)) {
    print(true);
  }
}
