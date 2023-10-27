void main() {
  Cuadrado cuadrado = Cuadrado(lado: 10);
  cuadrado.printArea();
}

abstract class Solucion {
  double area();
  void printArea();
}

class Cuadrado implements Solucion {
  final double lado;
  Cuadrado({required this.lado});

  @override
  double area() => (lado * lado);

  @override
  void printArea() {
    print('El area del Cuadrado es:${area()}');
  }
}

class Triangulo implements Solucion {
  final double lado;
  final double altura;
  Triangulo({required this.lado, required this.altura});

  @override
  double area() => ((lado * altura) / 2);

  @override
  void printArea() {
    print('El area del Triangulo es:${area()}');
  }
}

class Rectangulo implements Solucion {
  final double lado;
  final double base;
  Rectangulo({required this.lado, required this.base});

  @override
  double area() => (lado * base);

  @override
  void printArea() {
    print('El area del Rectangulo es:${area()}');
  }
}
