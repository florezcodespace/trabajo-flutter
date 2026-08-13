import 'dart:io';

// Temperatura del horno: F = (C * 1.8) + 32
class Temperatura {
  final double celsius;

  Temperatura({required this.celsius});

  double calcular() => (celsius * 1.8) + 32;

  String resumen() {
    return 'El horno está en $celsius °C, '
        'equivalentes a ${calcular()} °F.';
  }
}

// Solicita la temperatura por consola. Devuelve null si el dato es inválido.
double? solicitarTemperatura(String etiqueta) {
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
  print('CONVERSION DE CELSIUS A FAHRENHEIT');
  print('=' * 40);

  final double? celsius = solicitarTemperatura('Temperatura del horno (°C)');
  if (celsius == null) return;

  final Temperatura temperatura = Temperatura(celsius: celsius);

  print('');
  print(temperatura.resumen());
}
