// Punto de entrada de la aplicación y menú interactivo
import 'dart:io';
import '../lib/contact.dart';


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
        print('\n--- Lista de Contactos ---');
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
        } else {
          for (int i = 0; i < agenda.length; i++) {
            print('${i + 1}. Nombre: ${agenda[i].nombre} | Teléfono: ${agenda[i].telefono}');
          }
        }
        break;
      case '3':
        print('\n--- Buscar Contacto ---');
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
        } else {
          stdout.write('Ingrese el nombre del contacto a buscar: ');
          String query = stdin.readLineSync()?.trim() ?? '';
          if (query.isEmpty) {
            print('Búsqueda cancelada o texto vacío.');
          } else {
            List<Contacto> resultados = agenda
                .where((c) => c.nombre.toLowerCase().contains(query.toLowerCase()))
                .toList();

            if (resultados.isEmpty) {
              print('No se encontraron contactos que coincidan con "$query".');
            } else {
              print('\nResultados encontrados (${resultados.length}):');
              for (var c in resultados) {
                print('- Nombre: ${c.nombre} | Teléfono: ${c.telefono}');
              }
            }
          }
        }
        break;
      case '4':
        print('\n--- Eliminar Contacto ---');
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
        } else {
          stdout.write('Ingrese el nombre exacto del contacto a eliminar: ');
          String nombreEliminar = stdin.readLineSync()?.trim() ?? '';
          if (nombreEliminar.isEmpty) {
            print('Eliminación cancelada o texto vacío.');
          } else {
            int index = agenda.indexWhere(
                (c) => c.nombre.toLowerCase() == nombreEliminar.toLowerCase());

            if (index == -1) {
              print('No se encontró ningún contacto con el nombre "$nombreEliminar".');
            } else {
              Contacto eliminado = agenda.removeAt(index);
              print('Contacto "${eliminado.nombre}" con teléfono "${eliminado.telefono}" eliminado exitosamente.');
            }
          }
        }
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
