// * Reto #25
// * PIEDRA, PAPEL, TIJERA
// * Fecha publicación enunciado: 20/06/22
// * Fecha publicación resolución: 27/06/22
// * Dificultad: MEDIA
// *
// * Enunciado: Crea un programa que calcule quien gana más partidas al piedra, papel, tijera.
// * - El resultado puede ser: "Player 1", "Player 2", "Tie" (empate)
// * - La función recibe un listado que contiene pares, representando cada jugada.
// * - El par puede contener combinaciones de "R" (piedra), "P" (papel) o "S" (tijera).
// * - Ejemplo. Entrada: [("R","S"), ("S","R"), ("P","S")]. Resultado: "Player 2".
// *
// * Información adicional:
// * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
// * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
// * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
// * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

enum PiedraPapelTijeras { Piedra, Papel, Tijeras }

enum Jugador { Jugador_1, Jugador_2, Empate }

void main() {
  // jugar(partida: [
  //   Par(
  //     jugador_1: PiedraPapelTijeras.Piedra,
  //     jugador_2: PiedraPapelTijeras.Piedra,
  //   ),
  // ]);
  jugar(partida: [
    Par(
      jugador_1: PiedraPapelTijeras.Tijeras,
      jugador_2: PiedraPapelTijeras.Tijeras,
    ),
    Par(
      jugador_1: PiedraPapelTijeras.Tijeras,
      jugador_2: PiedraPapelTijeras.Tijeras,
    ),
    Par(
      jugador_1: PiedraPapelTijeras.Tijeras,
      jugador_2: PiedraPapelTijeras.Tijeras,
    ),
  ]);
}

jugar({required List<Par<PiedraPapelTijeras>> partida}) {
  final int tipoPartida = partida.length;
  if (tipoPartida == 1) {
    final Jugador jugador = tirada(
      jugada: Par(
        jugador_1: partida[0].jugador_1,
        jugador_2: partida[0].jugador_2,
      ),
    );
    if (jugador == Jugador.Jugador_1) {
      print('Gano Jugador 1');
    } else if (jugador == Jugador.Jugador_2) {
      print('Gano Jugador 2');
    } else {
      print('Empate');
    }
    return;
    //!       2 de 3
  } else if (tipoPartida == 3) {
    int partidasGanadasP1 = 0;
    int partidasGanadasP2 = 0;
    int partidasEmpate = 0;

    for (int i = 0; i < 3; i++) {
      final Jugador jugador = tirada(
        jugada: Par(
          jugador_1: partida[i].jugador_1,
          jugador_2: partida[i].jugador_2,
        ),
      );

      if (jugador == Jugador.Jugador_1) {
        partidasGanadasP1++;
        if (partidasGanadasP1 == 2) {
          print('Gano Jugador 1,          2 de 3');
          return;
        }
      } else if (jugador == Jugador.Jugador_2) {
        partidasGanadasP2++;
        if (partidasGanadasP2 == 2) {
          print('Gano Jugador 2,          2 de 3');
          return;
        }
      } else {
        partidasEmpate++;
        if (partidasEmpate == 2) {
          print('Empate');
          return;
        }
      }
    }
  } else {
    print('Cantidad de partidas incorrectas');
  }
}

Jugador tirada({required Par jugada}) {
  print('Jugador 1:  ${jugada.jugador_1}  Jugador 2:  ${jugada.jugador_2}');
  if (jugada.jugador_1 != jugada.jugador_2) {
    if (jugada.jugador_1 == PiedraPapelTijeras.Papel &&
            jugada.jugador_2 == PiedraPapelTijeras.Piedra ||
        jugada.jugador_1 == PiedraPapelTijeras.Piedra &&
            jugada.jugador_2 == PiedraPapelTijeras.Tijeras ||
        jugada.jugador_1 == PiedraPapelTijeras.Tijeras &&
            jugada.jugador_2 == PiedraPapelTijeras.Papel) {
      return Jugador.Jugador_1;
    } else {
      return Jugador.Jugador_2;
    }
  } else {
    return Jugador.Empate;
  }
}

class Par<PiedraPapelTijeras> {
  PiedraPapelTijeras jugador_1;
  PiedraPapelTijeras jugador_2;
  Par({required this.jugador_1, required this.jugador_2});
}
