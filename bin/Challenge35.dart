/*
 * Reto #35
 * BATALLA POKÉMON
 * Fecha publicación enunciado: 29/08/22
 * Fecha publicación resolución: 06/09/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que calcule el daño de un ataque durante una batalla Pokémon.
 * - La fórmula será la siguiente: daño = 50 * (ataque / defensa) * efectividad
 * - Efectividad: x2 (súper efectivo), x1 (neutral), x0.5 (no es muy efectivo)
 * - Sólo hay 4 tipos de Pokémon: Agua, Fuego, Planta y Eléctrico (buscar su efectividad)
 * - El programa recibe los siguientes parámetros:
 *  - Tipo del Pokémon atacante.
 *  - Tipo del Pokémon defensor.
 *  - Ataque: Entre 1 y 100.
 *  - Defensa: Entre 1 y 100.
 */

import 'dart:ffi';

enum TiposPokemon { Agua, Fuego, Planta, Electrico }

void main(List<String> args) {
  print(resolucion(
    ataque: 90,
    defensa: 50,
    tipoAtacante: TiposPokemon.Agua,
    tipoDefensor: TiposPokemon.Agua,
  ));
}

double resolucion({
  required TiposPokemon tipoAtacante,
  required int ataque,
  required TiposPokemon tipoDefensor,
  required int defensa,
}) {
  if (ataque > 101 && defensa > 101) {
    print('Error Ataque y Defensa tiene que ser menor a 100');
    return 0;
  }
  if (ataque < 0 && defensa < 0) {
    print('Error el Ataque y Defensa tiene que ser mayor a 0');
    return 0;
  }

  final double multiplicador =
      efectividad(tipoAtacante: tipoAtacante, tipoDefensor: tipoDefensor);

  final double danoTotal = 50 * (ataque / defensa) * multiplicador;

  return danoTotal;
}

double efectividad({
  required TiposPokemon tipoAtacante,
  required TiposPokemon tipoDefensor,
}) {
  // Defensor Agua
  if (tipoDefensor == TiposPokemon.Agua) {
    if (tipoAtacante == TiposPokemon.Agua) {
      return 1;
    }
    if (tipoAtacante == TiposPokemon.Fuego) {
      return 0.5;
    }
    if (tipoAtacante == TiposPokemon.Planta) {
      return 2;
    }
    if (tipoAtacante == TiposPokemon.Electrico) {
      return 2;
    }
  }
  // Defensor Fuego
  if (tipoDefensor == TiposPokemon.Fuego) {
    if (tipoAtacante == TiposPokemon.Agua) {
      return 2;
    }
    if (tipoAtacante == TiposPokemon.Fuego) {
      return 0.5;
    }
    if (tipoAtacante == TiposPokemon.Planta) {
      return 0.5;
    }
    if (tipoAtacante == TiposPokemon.Electrico) {
      return 1;
    }
  }
  // Defensor Planta
  if (tipoDefensor == TiposPokemon.Planta) {
    if (tipoAtacante == TiposPokemon.Agua) {
      return 0.5;
    }
    if (tipoAtacante == TiposPokemon.Fuego) {
      return 2;
    }
    if (tipoAtacante == TiposPokemon.Planta) {
      return 0.5;
    }
    if (tipoAtacante == TiposPokemon.Electrico) {
      return 0.5;
    }
  }
  // Defensor Electrico
  if (tipoDefensor == TiposPokemon.Electrico) {
    if (tipoAtacante == TiposPokemon.Agua) {
      return 1;
    }
    if (tipoAtacante == TiposPokemon.Fuego) {
      return 1;
    }
    if (tipoAtacante == TiposPokemon.Planta) {
      return 1;
    }
    if (tipoAtacante == TiposPokemon.Electrico) {
      return 0.5;
    }
  }

  return 0;
}
