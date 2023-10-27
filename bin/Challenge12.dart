//  Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
//  Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
//  NO se tienen en cuenta los espacios, signos de puntuación y tildes.
//  Ejemplo: Ana lleva al oso la avellana.

void main() {
  respuesta(cadena: 'Ana lleva al oso la avellanaa');
}

respuesta({required String cadena}) {
  final List<String> cadenaLimpia =
      cadena.toLowerCase().replaceAll(RegExp('[ ]'), '').split('');
  final String cadenaReversa = cadenaLimpia.reversed.join('');

  if (cadenaReversa == (cadenaLimpia.join(''))) {
    print('Son Palíndromos');
  } else {
    print('No son Palíndromos');
  }
}
