import 'dart:io';

void main() {
  resolucion();
}

void resolucion() {
  print('String 1:');
  String? string1 = stdin.readLineSync();
  print('String 1:');
  String? string2 = stdin.readLineSync();

  if (string1 == string2) {
    print('No son anagramas');
    return;
  }
  List<String> palabra1 = string1!.split('');
  List<String> palabra2 = string2!.split('');
  palabra1.sort();
  palabra2.sort();
  final String ordenada1 = palabra1.join('');
  final String ordenada2 = palabra2.join('');

  if (ordenada1 == ordenada2) {
    print('Son Un Anagrama');
  } else
    print('No Son Anagramas');
}
