/*
 * Reto #16
 * EN MAYÚSCULA
 * Fecha publicación enunciado: 18/04/22
 * Fecha publicación resolución: 25/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba un String de cualquier tipo y se encargue de
 * poner en mayúscula la primera letra de cada palabra.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

void main() {
  print(solucion(cadena: '¿hola qué tal estás?'));
  // solucion(cadena: '¿hola qué tal estás?');
}

String solucion({required String cadena}) {
  final int length = cadena.length;
  String upperCadena = '';
  bool primeraVez = true;

  for (int i = 0; i < length; i++) {
    if (isLetter(letra: cadena[i]) && primeraVez) {
      upperCadena = upperCadena + cadena[i].toUpperCase();
      primeraVez = false;
    } else {
      upperCadena = upperCadena + cadena[i];
    }
    if (isSpace(letra: cadena[i])) {
      primeraVez = true;
    }
  }

  return upperCadena;
}

bool isLetter({required String letra}) => RegExp('[a-zA-Z]').hasMatch(letra);

bool isSpace({required String letra}) => letra == ' ';
