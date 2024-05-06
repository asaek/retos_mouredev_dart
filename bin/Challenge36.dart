/*
 * Reto #36
 * LOS ANILLOS DE PODER
 * Fecha publicación enunciado: 06/09/22
 * Fecha publicación resolución: 14/09/22
 * Dificultad: MEDIA
 *
 * Enunciado: ¡La Tierra Media está en guerra! En ella lucharán razas leales a Sauron
 * contra otras bondadosas que no quieren que el mal reine sobre sus tierras.
 * Cada raza tiene asociado un "valor" entre 1 y 5:
 * 
 * - Razas bondadosas: Pelosos (1), Sureños buenos (2), Enanos (3), Númenóreanos (4), Elfos (5)
 * - Razas malvadas: Sureños malos (2), Orcos (2), Goblins (2), Huargos (3), Trolls (5)
 * Crea un programa que calcule el resultado de la batalla entre los 2 tipos de ejércitos:
 * - El resultado puede ser que gane el bien, el mal, o exista un empate. Dependiendo de la
 *   suma del valor del ejército y el número de integrantes.
 * - Cada ejército puede estar compuesto por un número de integrantes variable de cada raza.
 * - Tienes total libertad para modelar los datos del ejercicio.
 * Ej: 1 Peloso pierde contra 1 Orco, 2 Pelosos empatan contra 1 Orco, 3 Pelosos ganan a 1 Orco.
 */

enum EjercitoBueno { pelosos, surenosBuenos, enanos, numenoreanos, elfos }

enum EjercitoMalo { orcos, surenosMalos, goblins, huargos, trolls }

extension PoderAtaqueBueno on EjercitoBueno {
  int get poder {
    switch (this) {
      case EjercitoBueno.pelosos:
        return 1;
      case EjercitoBueno.surenosBuenos:
        return 2;
      case EjercitoBueno.enanos:
        return 3;
      case EjercitoBueno.numenoreanos:
        return 4;
      case EjercitoBueno.elfos:
        return 5;
    }
  }
}

extension PoderAtaqueMalo on EjercitoMalo {
  int get poder {
    switch (this) {
      case EjercitoMalo.orcos:
        return 2;
      case EjercitoMalo.surenosMalos:
        return 2;
      case EjercitoMalo.goblins:
        return 2;
      case EjercitoMalo.huargos:
        return 3;
      case EjercitoMalo.trolls:
        return 5;
    }
  }
}

void main(List<String> args) {
  solucionn(ejercitoBUeno: [
    EjercitoBueno.elfos,
  ], ejercitoMalo: [
    EjercitoMalo.orcos,
  ]);
}

void solucionn(
    {required List<EjercitoBueno> ejercitoBUeno,
    required List<EjercitoMalo> ejercitoMalo}) {
  int poderEjercitoBUeno = 0;
  int poderEjercitoMalo = 0;
  for (EjercitoBueno peloton in ejercitoBUeno) {
    poderEjercitoBUeno = poderEjercitoBUeno + peloton.poder;
  }
  for (EjercitoMalo peloton in ejercitoMalo) {
    poderEjercitoMalo = poderEjercitoMalo + peloton.poder;
  }

  if (poderEjercitoBUeno == poderEjercitoMalo) {
    print('Hay un empate');
    print('Ejercito Bueno: ${ejercitoBUeno}');
    print('Ejercito Malo: ${ejercitoMalo}');
    return;
  }
  if (poderEjercitoBUeno > poderEjercitoMalo) {
    print("Ganaron los buenos");
    print('Ejercito Bueno: ${ejercitoBUeno}');
    return;
  } else {
    print('Ganaron los Malos');
    print('Ejercito Malo: ${ejercitoMalo}');
    return;
  }
}
