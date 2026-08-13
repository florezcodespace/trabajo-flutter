import 'dart:io';

// Serie de Fibonacci: 1 1 2 3 5 8 13 ... hasta un valor menor o igual al límite
class SerieFibonacci {
  int limite;

  // El constructor de la clase
  SerieFibonacci({required this.limite});

  // Método que genera los términos de la serie
  List<int> generarSerie() {
    List<int> serie = [];
    int anterior = 1;
    int actual = 1;

    while (anterior <= limite) {
      serie.add(anterior);
      int siguiente = anterior + actual;
      anterior = actual;
      actual = siguiente;
    }

    return serie;
  }

  // Método para mostrar los resultados
  void imprimirSerie() {
    List<int> serie = generarSerie();
    print('\n--- Serie de Fibonacci hasta $limite ---');
    print(serie.join(' '));
    print('Cantidad de términos: ${serie.length}');
  }
}

void main() {
  // El ejercicio pide la serie hasta un valor menor o igual a 100
  SerieFibonacci serie = SerieFibonacci(limite: 100);

  // Ejecutamos los comportamientos del objeto
  serie.imprimirSerie();

  stdout.write('\nPresione Enter para salir...');
  stdin.readLineSync();
}
