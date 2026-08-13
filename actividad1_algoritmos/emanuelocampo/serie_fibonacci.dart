import 'dart:io';

// Serie de Fibonacci: 1 1 2 3 5 8 13 ... sin pasar del valor límite
class SerieDeFibonacci {
  int valorMaximo;

  SerieDeFibonacci(this.valorMaximo);

  List<int> get terminos {
    List<int> valores = [1, 1];

    while (valores[valores.length - 1] + valores[valores.length - 2] <=
        valorMaximo) {
      valores.add(valores[valores.length - 1] + valores[valores.length - 2]);
    }

    return valores;
  }

  void generarReporte() {
    List<int> valores = terminos;
    print('');
    print('Serie de Fibonacci hasta $valorMaximo:');
    print(valores.join(', '));
    print('Se generaron ${valores.length} términos.');
  }
}

void main() {
  // El ejercicio pide la serie hasta un valor menor o igual a 100
  SerieDeFibonacci serie = SerieDeFibonacci(100);
  serie.generarReporte();

  stdout.write('\nPresione Enter para salir...');
  stdin.readLineSync();
}
