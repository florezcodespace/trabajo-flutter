# 📖 Agenda de Contactos CLI

## 📝 Descripción del Proyecto
Este es un proyecto de consola desarrollado en **Dart** que permite gestionar una agenda telefónica básica. La aplicación cuenta con un menú interactivo con opciones para agregar, listar, buscar y eliminar contactos.

El propósito principal de este repositorio es aplicar y documentar el uso de la metodología **Gitflow** para el trabajo colaborativo, demostrando la gestión de ramas (`main`, `develop`, `feature`) y la resolución de conflictos en equipo.

## 👥 Equipo de Trabajo y Roles

A continuación, se detalla el equipo de aprendices involucrados en el desarrollo y sus responsabilidades técnicas y de control de versiones:

| Nombre del Aprendiz | Rol en Gitflow | Tareas Asignadas (Dart) |
| :--- | :--- | :--- |
| **Andrés Florez** | **Líder de Repositorio** (Ramas `main`, `develop`) | Estructura inicial, menú base, opción de **Agregar** contacto. Gestión de integración. |
| **Santiago perez** | **Desarrollador Feature** (Rama `feature/listar`) | Creación del modelo `Contacto` y lógica de la opción de **Listar** contactos. |
| **ocampotobonemanuel5-svg** | **Desarrollador Feature** (Rama `feature/gestion`) | Implementación de los algoritmos para **Buscar** y **Eliminar** contactos en la lista. |

## 🚀 Instrucciones de Ejecución

Para ejecutar este proyecto en tu entorno local, asegúrate de tener el SDK de Dart instalado y ejecuta el siguiente comando en la raíz del proyecto:

```bash
dart run bin/main.dart
```

## 🧮 Actividad 1 — Algoritmos en Dart

La carpeta `actividad1_algoritmos/` contiene los cinco algoritmos de la actividad de entrenamiento, resueltos por cada aprendiz en su propia subcarpeta (`andresflorez/`, `emanuelocampo/`, `santiagoperez/`):

| Archivo | Ejercicio | Fórmula |
| :--- | :--- | :--- |
| `mru.dart` | Distancia en Movimiento Rectilíneo Uniforme | `D = V * T` |
| `planilla.dart` | Total devengado por un empleado en el mes | `Total = horas * tarifa` |
| `hipotenusa.dart` | Hipotenusa de un triángulo rectángulo | `H = sqrt(a² + b²)` |
| `temperatura.dart` | Conversión de Celsius a Fahrenheit | `F = (C * 1.8) + 32` |
| `serie_fibonacci.dart` | Serie 1 1 2 3 5 8 13… hasta un valor ≤ 100 | — |

Cada algoritmo usa `class`, la librería `dart:io` y valida los datos vacíos o no numéricos. Se ejecutan de forma individual, por ejemplo:

```bash
dart run actividad1_algoritmos/andresflorez/mru.dart
```
