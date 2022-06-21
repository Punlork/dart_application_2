import 'dart:io';

void main() {
  stdout.write('Name: ');
  var name = stdin.readLineSync()!;
  if (name.isEmpty) {
    print('One for you, one for me.');
  } else {
    print(givenName(name));
  }
}

String givenName(n) {
  return 'One for $n, one for me.';
}
