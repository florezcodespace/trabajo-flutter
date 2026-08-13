import 'dart:io';

// Planilla mensual de un empleado
class Empleado {
  String nombre;
  double horasLaboradas;
  double tarifaPorHora;

  // El constructor de la clase
  Empleado({
    required this.nombre,
    required this.horasLaboradas,
    required this.tarifaPorHora,
  });

  // Método que calcula el total devengado en el mes
  double calcularTotalDevengado() {
    return horasLaboradas * tarifaPorHora;
  }

  // Método para mostrar los resultados
  void imprimirPlanilla() {
    print('\n--- Planilla del Empleado ---');
    print('Nombre: $nombre');
    print('Horas laboradas: $horasLaboradas');
    print('Total devengado: ${calcularTotalDevengado()}');
  }
}

void main() {
  // Entradas
  stdout.write('Ingrese el nombre del empleado: ');
  String nombre = stdin.readLineSync() ?? '';

  if (nombre.trim().isEmpty) {
    print('Nombre no válido.');
    return;
  }

  stdout.write('Ingrese la cantidad de horas laboradas en el mes: ');
  String horasIngresadas = stdin.readLineSync() ?? '';

  if (horasIngresadas.trim().isEmpty) {
    print('Horas no válidas.');
    return;
  }

  double? horasLaboradas = double.tryParse(horasIngresadas.trim());
  if (horasLaboradas == null) {
    print('Las horas deben ser un número.');
    return;
  }

  stdout.write('Ingrese la tarifa por hora: ');
  String tarifaIngresada = stdin.readLineSync() ?? '';

  if (tarifaIngresada.trim().isEmpty) {
    print('Tarifa no válida.');
    return;
  }

  double? tarifaPorHora = double.tryParse(tarifaIngresada.trim());
  if (tarifaPorHora == null) {
    print('La tarifa debe ser un número.');
    return;
  }

  Empleado empleado = Empleado(
    nombre: nombre.trim(),
    horasLaboradas: horasLaboradas,
    tarifaPorHora: tarifaPorHora,
  );

  // Ejecutamos los comportamientos del objeto
  empleado.imprimirPlanilla();
}
