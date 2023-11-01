//  * Reto #18
//  * TRES EN RAYA
//  * Fecha publicación enunciado: 02/05/22
//  * Fecha publicación resolución: 09/05/22
//  * Dificultad: DIFÍCIL
//  *
//  * Enunciado: Crea una función que analice una matriz 3x3 compuesta por "X" y "O" y retorne lo siguiente:
//  * - "X" si han ganado las "X"
//  * - "O" si han ganado los "O"
//  * - "Empate" si ha habido un empate
//  * - "Nulo" si la proporción de "X", de "O", o de la matriz no es correcta. O si han ganado los 2.
//  * Nota: La matriz puede no estar totalmente cubierta. Se podría representar con un vacío "", por ejemplo.
//  *
//  * Información adicional:
//  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
//  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
//  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
//  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
enum Gato { X, O, vacio }

enum Ganador { X, O, draw, nulo }

void main() {
  print(
    solucion(
      matriz: [
        [Gato.O, Gato.O, Gato.X],
        [Gato.O, Gato.X, Gato.X],
        [Gato.vacio, Gato.O, Gato.vacio],
      ],
    ),
  );
}

Ganador solucion({required List<List<Gato>> matriz}) {
  int cantidadEzquineada = 0;
  for (int i = 1; i < 3; i++) {
    if (matriz[0][0] == matriz[i][i]) {
      cantidadEzquineada++;
      if (cantidadEzquineada == 2) {
        switch (matriz[0][0]) {
          case Gato.X:
            return Ganador.X;
          case Gato.O:
            return Ganador.O;
          case Gato.vacio:
            break;
        }
      }
    }
  }
  int cantidadEzquVolteada = 0;
  for (int i = 2; i >= 0; i--) {
    if (matriz[2][0] == matriz[i][i]) {
      cantidadEzquVolteada++;
      if (cantidadEzquVolteada == 2) {
        switch (matriz[2][2]) {
          case Gato.X:
            return Ganador.X;
          case Gato.O:
            return Ganador.O;
          case Gato.vacio:
            break;
        }
      }
    }
  }

  for (int i = 0; i < 3; i++) {
    int cantidadHorizontal = 0;
    int cantidadVertical = 0;
    for (int ii = 1; ii < 3; ii++) {
      if (matriz[i][0] == matriz[i][ii]) {
        cantidadHorizontal++;
        if (cantidadHorizontal == 2) {
          switch (matriz[i][0]) {
            case Gato.X:
              return Ganador.X;
            case Gato.O:
              return Ganador.O;
            case Gato.vacio:
              break;
          }
        }
      }

      if (matriz[0][i] == matriz[ii][i]) {
        cantidadVertical++;
        if (cantidadVertical == 2) {
          switch (matriz[i][0]) {
            case Gato.X:
              return Ganador.X;
            case Gato.O:
              return Ganador.O;
            case Gato.vacio:
              break;
          }
        }
      }
    }
  }

  return Ganador.draw;
}
