void main() {
  solucion(cadena: '{{{{{{(}}}}}}');
}

void solucion({required String cadena}) {
  cadena = cadena.replaceAll(RegExp('[ ]'), '');
  final int largoCadena = cadena.length;
  final List<String> parenCerrar = [];
  int abiertos = 0, cerrados = 0;
  const List<String> entradasPare = [
    '{',
    '[',
    '(',
  ];
  const List<String> cerradasPare = [
    '}',
    ']',
    ')',
  ];

  for (int i = 0; i < largoCadena; i++) {
    for (int ii = 0; ii < entradasPare.length; ii++) {
      if (entradasPare[ii] == cadena[i]) {
        abiertos++;
        if (parenCerrar.isEmpty) {
          parenCerrar.add(cerradasPare[i]);
        } else {
          parenCerrar.insert(0, cerradasPare[ii]);
        }
      }
      if (cerradasPare[ii] == cadena[i]) {
        cerrados++;
      }
    }
  }
  if (abiertos != cerrados) {
    print('No esta balanceada');
    return;
  }

  for (int i = 0; i < largoCadena; i++) {
    if (cadena[i] == parenCerrar[0]) {
      parenCerrar.removeAt(0);
    }
  }

  if (parenCerrar.isEmpty) {
    print('Esta balanceada');
  }
}
