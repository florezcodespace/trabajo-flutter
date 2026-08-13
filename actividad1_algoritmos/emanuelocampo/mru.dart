import 'dart:io';

// Automóvil que se desplaza con velocidad constante (MRU): D = V * T
class Automovil {
  double velocidad; // m/s
  double tiempo; // s

  Automovil(this.velocidad, this.tiempo);

  // La distancia se obtiene aplicando la fórmula del MRU
  double get distancia => velocidad * tiempo;

  void generarReporte() {
    print('');
    print('Velocidad constante : ${velocidad.toStringAsFixed(2)} m/s');
    print('Tiempo transcurrido : ${tiempo.toStringAsFixed(2)} s');
    print('Distancia recorrida : ${distancia.toStringAsFixed(2)} m');
  }
}

// Pide un dato por consola y valida que no venga vacío ni con letras
double? leerNumero(String mensaje) {
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

  return numero;
}

void main() {
  double? velocidad = leerNumero('Velocidad del automóvil (m/s): ');
  if (velocidad == null) return;

  double? tiempo = leerNumero('Tiempo de recorrido (s): ');
  if (tiempo == null) return;

  Automovil automovil = Automovil(velocidad, tiempo);
  automovil.generarReporte();
}
