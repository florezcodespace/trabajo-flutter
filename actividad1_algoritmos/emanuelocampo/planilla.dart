import 'dart:io';

// Planilla mensual: total devengado = horas laboradas * tarifa por hora
class Planilla {
  String nombreEmpleado;
  double horasLaboradas;
  double tarifaPorHora;

  Planilla(this.nombreEmpleado, this.horasLaboradas, this.tarifaPorHora);

  double get totalDevengado => horasLaboradas * tarifaPorHora;

  void generarReporte() {
    print('');
    print('Empleado        : $nombreEmpleado');
    print('Horas laboradas : ${horasLaboradas.toStringAsFixed(2)}');
    print('Total devengado : \$${totalDevengado.toStringAsFixed(2)}');
  }
}

// Pide un texto por consola y valida que no venga vacío
String? leerTexto(String mensaje) {
  stdout.write(mensaje);
  String dato = stdin.readLineSync() ?? '';

  if (dato.trim().isEmpty) {
    print('El dato no puede quedar vacío.');
    return null;
  }

  return dato.trim();
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
  String? nombre = leerTexto('Nombre del empleado: ');
  if (nombre == null) return;

  double? horas = leerNumero('Horas laboradas en el mes: ');
  if (horas == null) return;

  double? tarifa = leerNumero('Tarifa por hora: ');
  if (tarifa == null) return;

  Planilla planilla = Planilla(nombre, horas, tarifa);
  planilla.generarReporte();
}
