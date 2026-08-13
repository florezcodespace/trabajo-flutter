import 'dart:io';
import 'dart:math';

// Triángulo rectángulo: H = raíz cuadrada(a² + b²)
class Triangulo {
  final double cateto1;
  final double cateto2;

  Triangulo({required this.cateto1, required this.cateto2});

  double calcular() => sqrt(pow(cateto1, 2) + pow(cateto2, 2));

  String resumen() {
    return 'Para los catetos $cateto1 y $cateto2, '
        'la hipotenusa mide ${calcular()}.';
  }
}

// Solicita un lado del triángulo. Devuelve null si el dato es inválido.
double? solicitarLado(String etiqueta) {
  stdout.write('$etiqueta: ');
  final String texto = (stdin.readLineSync() ?? '').trim();

  if (texto.isEmpty) {
    print('Error: no se ingresó ningún valor para $etiqueta.');
    return null;
  }

  final double? valor = double.tryParse(texto);
  if (valor == null) {
    print('Error: "$texto" no corresponde a un número.');
    return null;
  }

  if (valor <= 0) {
    print('Error: los lados del triángulo deben ser mayores que cero.');
    return null;
  }

  return valor;
}

void main() {
  print('=' * 40);
  print('HIPOTENUSA DE UN TRIANGULO RECTANGULO');
  print('=' * 40);

  final double? cateto1 = solicitarLado('Primer cateto');
  if (cateto1 == null) return;

  final double? cateto2 = solicitarLado('Segundo cateto');
  if (cateto2 == null) return;

  final Triangulo triangulo =
      Triangulo(cateto1: cateto1, cateto2: cateto2);

  print('');
  print(triangulo.resumen());
}
