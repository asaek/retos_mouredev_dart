void main() {
  // final tsuru = Tsuru('2020');
  final gato = Gato();
}

class Vehiculo {
  int numeroRuedas;
  int asientos;

  Vehiculo(this.numeroRuedas, this.asientos) {
    print('Se creo un vehiculo con $numeroRuedas ruedas,  asientos $asientos');
  }
}

class Tsuru extends Vehiculo {
  late String modelo;

  // @override
  // late int numeroRuedas;

  Tsuru(this.modelo) : super(10, 7) {
    print('Se creo un tsuru modelo $modelo');
  }
}

// Clase base
class Animal {
  void respirar() => print('Respirando');
}

// Interfaz
abstract class Mascota {
  void hacerRuido();
}

// Extends
class Gato extends Animal {
  @override
  void respirar() => super.respirar(); // Extiende y sobrescribe
}

// Implements
class Perro implements Mascota {
  @override
  void hacerRuido() => print('Ladra'); // Debe implementar todos los métodos
}
