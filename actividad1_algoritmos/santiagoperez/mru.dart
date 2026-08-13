import 'dart:io';

// Movimiento Rectilíneo Uniforme (MRU): D = V * T
class Recorrido {
  final double velocidad; // m/s
  final double tiempo; // s

  Recorrido({required this.velocidad, required this.tiempo});

  double calcular() => velocidad * tiempo;

  String resumen() {
    return 'Con una velocidad de $velocidad m/s durante $tiempo s, '
        'el automóvil recorre ${calcular()} metros.';
  }
}

// Solicita un valor numérico por consola. Devuelve null si el dato es inválido.
double? solicitarValor(String etiqueta) {
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

  return valor;
}

void main() {
  print('=' * 40);
  print('CALCULO DE DISTANCIA - MRU');
  print('=' * 40);

  final double? velocidad = solicitarValor('Velocidad (m/s)');
  if (velocidad == null) return;

  final double? tiempo = solicitarValor('Tiempo (s)');
  if (tiempo == null) return;

  final Recorrido recorrido = Recorrido(velocidad: velocidad, tiempo: tiempo);

  print('');
  print(recorrido.resumen());
}
