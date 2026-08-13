import 'dart:io';

// Planilla mensual de un empleado
class Nomina {
  final String empleado;
  final double horas;
  final double tarifa;

  Nomina({required this.empleado, required this.horas, required this.tarifa});

  double calcular() => horas * tarifa;

  String resumen() {
    return 'Empleado: $empleado\n'
        'Horas laboradas: $horas\n'
        'Total devengado: ${calcular()}';
  }
}

// Solicita un texto por consola. Devuelve null si viene vacío.
String? solicitarTexto(String etiqueta) {
  stdout.write('$etiqueta: ');
  final String texto = (stdin.readLineSync() ?? '').trim();

  if (texto.isEmpty) {
    print('Error: no se ingresó ningún valor para $etiqueta.');
    return null;
  }

  return texto;
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
  print('PLANILLA DEL EMPLEADO');
  print('=' * 40);

  final String? empleado = solicitarTexto('Nombre del empleado');
  if (empleado == null) return;

  final double? horas = solicitarValor('Horas laboradas en el mes');
  if (horas == null) return;

  final double? tarifa = solicitarValor('Tarifa por hora');
  if (tarifa == null) return;

  final Nomina nomina =
      Nomina(empleado: empleado, horas: horas, tarifa: tarifa);

  print('');
  print(nomina.resumen());
}
