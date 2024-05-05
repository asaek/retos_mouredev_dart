void main() {
  resolucion(year: 2024);
}

void resolucion({required int year}) {
  List<String> elements = [
    "madera",
    "fuego",
    "tierra",
    "metal",
    "agua",
  ];
  List<String> animals = [
    "rata",
    "buey",
    "tigre",
    "conejo",
    "dragón",
    "serpiente",
    "caballo",
    "oveja",
    "mono",
    "gallo",
    "perro",
    "cerdo",
  ];

  if (year < 604) {
    print('El ano $year no es valido');
    return;
  }
  //* Se utiliza el -4 para que encaje con el ciclo de 60 anos
  //* con el ciclo de 60 anos y poder obtener el indice del elemento y animal
  final int elementIndex = (year - 4) % 60;

  // Primero se reduce el indice a un rango de 0 a 9 y luego divide entre 2 para
  // obtener un rango de 0 a 4 esto para encajar con la lista de elements
  final String element = elements[(elementIndex % 10) ~/ 2];

  // Se obtiene el animal con el residuo de la division entre 12 elementos
  final String animal = animals[elementIndex % 12];

  print('El ano $year es el ano de $element $animal');
}
