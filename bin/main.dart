// Punto de entrada de la aplicación y menú interactivo
import 'dart:io';

// El Aprendiz 2 definirá los atributos de esta clase
class Contacto{
  String nombre;
  String telefono;
  Contacto(this.nombre, this.telefono);
}

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write('Nombre: ');
        String nombre = stdin.readLineSync()?.trim() ?? '';
        stdout.write('Teléfono: ');
        String telefono = stdin.readLineSync()?.trim() ?? '';

        if (nombre.isEmpty || telefono.isEmpty) {
          print('El nombre y el teléfono son obligatorios. No se agregó el contacto.');
        } else {
          agenda.add(Contacto(nombre, telefono));
          print('Contacto "$nombre" agregado. Total en la agenda: ${agenda.length}');
        }
        break;
      case '2':
        // TODO: Aprendiz 2 - Implementar lógica para listar
        break;
      case '3':
        // TODO: Aprendiz 3 - Implementar lógica para buscar
        break;
      case '4':
        // TODO: Aprendiz 3 - Implementar lógica para eliminar
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
