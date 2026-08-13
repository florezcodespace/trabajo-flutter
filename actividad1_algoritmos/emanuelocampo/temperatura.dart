import 'dart:io';

// Control del horno de la casa: F = (C * 1.8) + 32
class ControlHorno {
  double celsius;

  ControlHorno(this.celsius);

  double get fahrenheit => (celsius * 1.8) + 32;

  void generarReporte() {
    print('');
    print('Temperatura ingresada : ${celsius.toStringAsFixed(1)} °C');
    print('Temperatura del horno : ${fahrenheit.toStringAsFixed(1)} °F');
  }
}

// Pide la temperatura por consola y valida que no venga vacía ni con letras
double? leerTemperatura(String mensaje) {
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
  double? celsius = leerTemperatura('Temperatura del horno en °C: ');
  if (celsius == null) return;

  ControlHorno horno = ControlHorno(celsius);
  horno.generarReporte();
}
