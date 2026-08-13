import 'dart:io';

// Serie de Fibonacci: 1 1 2 3 5 8 13 ... sin superar el tope indicado
class Fibonacci {
  final int tope;

  Fibonacci({required this.tope});

  List<int> calcular() {
    final List<int> serie = [];
    int primero = 1;
    int segundo = 1;

    while (primero <= tope) {
      serie.add(primero);
      final int suma = primero + segundo;
      primero = segundo;
      segundo = suma;
    }

    return serie;
  }

  String resumen() {
    final List<int> serie = calcular();
    final StringBuffer texto = StringBuffer();

    for (int i = 0; i < serie.length; i++) {
      texto.writeln('Término ${i + 1}: ${serie[i]}');
    }
    texto.write('La serie llega hasta ${serie.last}, sin superar $tope.');

    return texto.toString();
  }
}

void main() {
  print('=' * 40);
  print('SERIE DE FIBONACCI');
  print('=' * 40);

  // El ejercicio pide la serie hasta un valor menor o igual a 100
  final Fibonacci fibonacci = Fibonacci(tope: 100);

  print('');
  print(fibonacci.resumen());

  stdout.write('\nPresione Enter para salir...');
  stdin.readLineSync();
}
