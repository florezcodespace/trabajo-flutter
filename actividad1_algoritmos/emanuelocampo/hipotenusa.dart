import 'dart:io';
import 'dart:math';

// Triángulo rectángulo: H = raíz cuadrada(a² + b²)
class Triangulo {
  double ladoA;
  double ladoB;

  Triangulo(this.ladoA, this.ladoB);

  double get hipotenusa => sqrt(pow(ladoA, 2) + pow(ladoB, 2));

  void generarReporte() {
    print('');
    print('Lado a     : ${ladoA.toStringAsFixed(2)}');
    print('Lado b     : ${ladoB.toStringAsFixed(2)}');
    print('Hipotenusa : ${hipotenusa.toStringAsFixed(2)}');
  }
}

// Pide un lado por consola: no puede venir vacío, con letras ni ser negativo
double? leerLado(String mensaje) {
  stdout.write(mensaje);
  String dato = stdin.readLineSync() ?? '';

  if (dato.trim().isEmpty) {
    print('El dato no puede quedar vacío.');
    return null;
  }

  double? numero = double.tryParse(dato.trim());
  if (numero == null) {
    print('"$dato" no es un número válido.');
    return null;
  }

  if (numero <= 0) {
    print('El lado de un triángulo debe ser mayor que cero.');
    return null;
  }

  return numero;
}

void main() {
  double? ladoA = leerLado('Lado a del triángulo: ');
  if (ladoA == null) return;

  double? ladoB = leerLado('Lado b del triángulo: ');
  if (ladoB == null) return;

  Triangulo triangulo = Triangulo(ladoA, ladoB);
  triangulo.generarReporte();
}
