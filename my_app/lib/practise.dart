import 'dart:io';
void main() {
  print('hello world');
  stdout.write('enter name');
  var name= stdin.readLineSync();
  print('welcome, $name ');
}
