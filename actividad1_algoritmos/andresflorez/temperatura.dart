import 'dart:io';

// Conversión de temperatura del horno: F = (C * 1.8) + 32
class Horno {
  double gradosCelsius;

  // El constructor de la clase
  Horno({required this.gradosCelsius});

  // Método que convierte de grados Celsius a Fahrenheit
  double convertirAFahrenheit() {
    return (gradosCelsius * 1.8) + 32;
  }

  // Método para mostrar los resultados
  void mostrarResultado() {
    print('\n--- Temperatura del Horno ---');
    print('Grados Celsius: $gradosCelsius °C');
    print('Grados Fahrenheit: ${convertirAFahrenheit()} °F');
  }
}

void main() {
  // Entradas
  stdout.write('Ingrese la temperatura del horno en grados Celsius: ');
  String temperaturaIngresada = stdin.readLineSync() ?? '';

  if (temperaturaIngresada.trim().isEmpty) {
    print('Temperatura no válida.');
    return;
  }

  double? gradosCelsius = double.tryParse(temperaturaIngresada.trim());
  if (gradosCelsius == null) {
    print('La temperatura debe ser un número.');
    return;
  }

  Horno horno = Horno(gradosCelsius: gradosCelsius);

  // Ejecutamos los comportamientos del objeto
  horno.mostrarResultado();
}
