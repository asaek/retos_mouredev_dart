// * Reto #21
// * CALCULADORA .TXT
// * Fecha publicación enunciado: 23/05/22
// * Fecha publicación resolución: 01/06/22
// * Dificultad: MEDIA
// *
// * Enunciado: Lee el fichero "Challenge21.txt" incluido en el proyecto, calcula su resultado e imprímelo.
// * - El .txt se corresponde con las entradas de una calculadora.
// * - Cada línea tendrá un número o una operación representada por un símbolo (alternando ambos).
// * - Soporta números enteros y decimales.
// * - Soporta las operaciones suma "+", resta "-", multiplicación "*" y división "/".
// * - El resultado se muestra al finalizar la lectura de la última línea (si el .txt es correcto).
// * - Si el formato del .txt no es correcto, se indicará que no se han podido resolver las operaciones.
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

import 'dart:io';

void main() {
  solucion(cadena: 'Challenge21.txt');
}

double solucion({required String cadena}) {
  final file = File('bin/Challenge21.txt');
  final String archivoCadena = file.readAsStringSync();
  final String cadenaLimpia = archivoCadena.replaceAll('\n', '');

  final List<String> numeros = cadenaLimpia.split(RegExp(r'\D'));
  if (numeros.contains('')) {
    print(
        'Error los numeros son impares, por lo tanto no se pueden aplicar las operaciones');
    return 0.0;
  }
  final List<double> numerosInt =
      numeros.map((String s) => double.parse(s)).toList();

  final List<String> operadores = cadenaLimpia.split(RegExp(r'\d'));
  final String operadoresLimpios = operadores.join('');
  final List<String> listOperadores = operadoresLimpios.split('');

  print(listOperadores);
  double resultado = 0.0;

  for (int i = 0; i < numeros.length - 1; i++) {
    switch (listOperadores[i]) {
      case '+':
        if (i == 0) {
          resultado = numerosInt[i] + numerosInt[i + 1];
        } else {
          resultado = resultado + numerosInt[i + 1];
        }
        break;
      case '-':
        if (i == 0) {
          resultado = numerosInt[i] - numerosInt[i + 1];
        } else {
          resultado = resultado - numerosInt[i + 1];
        }
        break;
      case '*':
        if (i == 0) {
          resultado = numerosInt[i] * numerosInt[i + 1];
        } else {
          resultado = resultado * numerosInt[i + 1];
        }
        break;
      case '/':
        if (i == 0) {
          resultado = numerosInt[i] / numerosInt[i + 1];
        } else {
          resultado = resultado / numerosInt[i + 1];
        }
        break;
      default:
        print('Error el archivo esta mal redactado');
        return 0.0;
    }
  }
  print(resultado);
  return resultado;
}

bool operadores({required String operador}) {
  final RegExp rangoOperadores = RegExp(r'[+-*/]');
  return rangoOperadores.hasMatch(operador);
}



    // for (int ii = 0; ii < operadores.length; ii++) {
    //   switch (operadores[ii]) {
    //     case '+':
    //       break;
    //     case '-':
    //       break;
    //     case '*':
    //       break;
    //     case '/':
    //       break;
    //     default:
    //       print('Error el archivo esta mal redactado');
    //       return [];
    //   }
    // }