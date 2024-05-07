/*
 * Reto #37
 * LOS LANZAMIENTOS DE "THE LEGEND OF ZELDA"
 * Fecha publicación enunciado: 14/09/22
 * Fecha publicación resolución: 19/09/22
 * Dificultad: MEDIA
 *
 * Enunciado: ¡Han anunciado un nuevo "The Legend of Zelda"! Se llamará "Tears of the Kingdom"
 * y se lanzará el 12 de mayo de 2023.
 * Pero, ¿recuerdas cuánto tiempo ha pasado entre los distintos "The Legend of Zelda" de la historia?
 * Crea un programa que calcule cuántos años y días hay entre 2 juegos de Zelda que tú selecciones.
 * - Debes buscar cada uno de los títulos y su día de lanzamiento (si no encuentras el día exacto
 *   puedes usar el mes, o incluso inventártelo)
 */

Map<String, DateTime> fecha_zeldas = {
  'The Legend of Zelda': DateTime(1986, 2, 21),
  'The Adventure of Link': DateTime(1987, 1, 14),
  'A Link to the Past': DateTime(1991, 11, 21),
  'Link\'s Awakening': DateTime(1993, 6, 6),
  'Ocarina of Time': DateTime(1998, 11, 21),
  'Majora\'s Mask': DateTime(2000, 4, 27),
  'Oracle of Seasons': DateTime(2001, 2, 27),
  'Oracle of Ages': DateTime(2001, 2, 27),
  'Four Swords': DateTime(2002, 12, 2),
  'The Wind Waker': DateTime(2002, 12, 13),
  'Four Swords Adventures': DateTime(2004, 3, 18),
  'The Minish Cap': DateTime(2004, 11, 4),
  'Twilight Princess': DateTime(2006, 11, 19),
  'Phantom Hourglass': DateTime(2007, 6, 23),
  'Spirit Tracks': DateTime(2009, 12, 23),
  'Skyward Sword': DateTime(2011, 11, 18),
  'A Link Between Worlds': DateTime(2013, 11, 22),
  'Tri Force Heroes': DateTime(2015, 10, 22),
  'Breath of the Wild': DateTime(2017, 3, 3),
  'zelda tears of the kingdom': DateTime(2023, 05, 12),
};

void main(List<String> args) {
  calcularDiferenciaEntreJuegos(
      juego1: 'The Legend of Zelda', juego2: 'zelda tears of the kingdom');
}

void calcularDiferenciaEntreJuegos(
    {required String juego1, required String juego2}) {
  late MapEntry<String, DateTime> zelda_1;
  late MapEntry<String, DateTime> zelda_2;

  for (var zelda in fecha_zeldas.entries) {
    if (zelda.key == juego1) {
      zelda_1 = zelda;
    }
  }
  for (var zelda in fecha_zeldas.entries) {
    if (zelda.key == juego2) {
      zelda_2 = zelda;
    }
  }

  // Duration diferencia = zelda_2.value.difference(zelda_1.value);
  // final int anos = diferencia.inDays ~/ 365;
  // final int diasSobrados = diferencia.inDays % 365;
  // print('$juego1 - $juego2 hay $anos Anos y $diasSobrados Dias de diferencia');

  int years = zelda_2.value.year - zelda_1.value.year;
  int days = zelda_2.value.difference(zelda_1.value).inDays % 365;

  // if (zelda_2.value.month < zelda_1.value.month ||
  //     (zelda_2.value.month == zelda_1.value.month &&
  //         zelda_2.value.day < zelda_1.value.day)) {
  //   years--;
  //   days = zelda_1.value
  //           .difference(DateTime(
  //               zelda_2.value.year - 1, zelda_1.value.month, zelda_1.value.day))
  //           .inDays %
  //       365;
  // }

  print('Diferencia: $years años y $days días');
}
