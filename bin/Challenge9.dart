import 'package:test/expect.dart';

void main() {
  resolucion(texto: 'Hola, mundo.');
}

void resolucion({required String texto}) {
  final List<String> cadenaAbc =
      texto.toLowerCase().replaceAll(RegExp('[ ]'), '').split('');
  // final cadenaLimpia = cadenaTexto.replaceAll(RegExp('[,.]'), '');
  print(cadenaAbc);
  final List<String> morseCadena = [];

  final Map<String, String> morse = {
    'a': '.-',
    'b': '-...',
    'c': '-.-.',
    'ch': '----',
    'd': '-..',
    'e': '.',
    'f': '..-.',
    'g': '--.',
    'h': '....',
    'i': '..',
    'j': '----',
    'k': '.---',
    'l': '-.-',
    'm': '--',
    'n': '-.',
    'ñ': '--.--',
    'o': '---',
    'p': '.--.',
    'q': '--.-',
    'r': '.-.',
    's': '...',
    't': '-',
    'u': '..-',
    'v': '...-',
    'w': '.--',
    'x': '-..-',
    'y': '-.--',
    'z': '--..',
    '0': '----',
    '1': '.----',
    '2': '..---',
    '3': '...--',
    '4': '....-',
    '5': '.....',
    '6': '-....',
    '7': '--...',
    '8': '---..',
    '9': '----.',
    '.': '.-.-.-',
    ',': '--..--',
    '?': '..--..',
    '"': '.-..-.',
    '/': '-..-.',
  };

  for (int i = 0; i < cadenaAbc.length; i++) {
    morse.update(cadenaAbc[i], (value) {
      morseCadena.add(value);
      return value;
    });
  }
  print(morseCadena.join(''));
}
