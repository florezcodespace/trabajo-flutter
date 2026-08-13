import 'dart:io';

// Movimiento Rectilíneo Uniforme (MRU): D = V * T
class MovimientoRectilineo {
  double velocidad; // metros por segundo
  double tiempo; // segundos

  // El constructor de la clase
  MovimientoRectilineo({required this.velocidad, required this.tiempo});

  // Método que aplica la fórmula del MRU
  double calcularDistancia() {
    return velocidad * tiempo;
  }

  // Método para mostrar los resultados
  void mostrarResultado() {
    print('\n--- Resultado del MRU ---');
    print('Velocidad: $velocidad m/s');
    print('Tiempo: $tiempo s');
    print('Distancia recorrida: ${calcularDistancia()} m');
  }
}

void main() {
  // Entradas
  stdout.write('Ingrese la velocidad en m/s: ');
  String velocidadIngresada = stdin.readLineSync() ?? '';

  if (velocidadIngresada.trim().isEmpty) {
    print('Velocidad no válida.');
    return;
  }

  double? velocidad = double.tryParse(velocidadIngresada.trim());
  if (velocidad == null) {
    print('La velocidad debe ser un número.');
    return;
  }

  stdout.write('Ingrese el tiempo en segundos: ');
  String tiempoIngresado = stdin.readLineSync() ?? '';

  if (tiempoIngresado.trim().isEmpty) {
    print('Tiempo no válido.');
    return;
  }

  double? tiempo = double.tryParse(tiempoIngresado.trim());
  if (tiempo == null) {
    print('El tiempo debe ser un número.');
    return;
  }

  MovimientoRectilineo recorrido =
      MovimientoRectilineo(velocidad: velocidad, tiempo: tiempo);

  // Ejecutamos los comportamientos del objeto
  recorrido.mostrarResultado();
}
