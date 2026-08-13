import 'dart:io';
import 'dart:math';

// Triángulo rectángulo: H = raíz cuadrada(a² + b²)
class TrianguloRectangulo {
  double catetoA;
  double catetoB;

  // El constructor de la clase
  TrianguloRectangulo({required this.catetoA, required this.catetoB});

  // Método que calcula la hipotenusa con sqrt y pow
  double calcularHipotenusa() {
    return sqrt(pow(catetoA, 2) + pow(catetoB, 2));
  }

  // Método para mostrar los resultados
  void mostrarResultado() {
    print('\n--- Triángulo Rectángulo ---');
    print('Cateto a: $catetoA');
    print('Cateto b: $catetoB');
    print('Hipotenusa: ${calcularHipotenusa()}');
  }
}

void main() {
  // Entradas
  stdout.write('Ingrese el valor del cateto a: ');
  String catetoIngresadoA = stdin.readLineSync() ?? '';

  if (catetoIngresadoA.trim().isEmpty) {
    print('Cateto a no válido.');
    return;
  }

  double? catetoA = double.tryParse(catetoIngresadoA.trim());
  if (catetoA == null || catetoA <= 0) {
    print('El cateto a debe ser un número mayor que cero.');
    return;
  }

  stdout.write('Ingrese el valor del cateto b: ');
  String catetoIngresadoB = stdin.readLineSync() ?? '';

  if (catetoIngresadoB.trim().isEmpty) {
    print('Cateto b no válido.');
    return;
  }

  double? catetoB = double.tryParse(catetoIngresadoB.trim());
  if (catetoB == null || catetoB <= 0) {
    print('El cateto b debe ser un número mayor que cero.');
    return;
  }

  TrianguloRectangulo triangulo =
      TrianguloRectangulo(catetoA: catetoA, catetoB: catetoB);

  // Ejecutamos los comportamientos del objeto
  triangulo.mostrarResultado();
}
