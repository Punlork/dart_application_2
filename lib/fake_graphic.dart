import 'dart:io';

void main() {
  stdout.write('What size of the game you want, ex: 3 x 3: ');
  var input = int.parse(stdin.readLineSync()!);
  var hori = ' ---';
  var verti = '|   ';
  var lasthori = "${hori * input}\n";

  for (int i = 0; i < input; i++) {
    print(hori * input);
    print(verti * (input + 1));
  }
  print(lasthori);
}
