import 'dart:io';

void main() {
  stdout.write('Enter Mutiple Words: ');
  var input = stdin.readLineSync()!.split(' ');
  print(input);
  reverse(input);
}

void reverse(List<String> words) {
  var reverseword = words.reversed.join(' ');
  print(reverseword);
}
