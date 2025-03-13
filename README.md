# pinApp

Aplicación Flutter desarrollada como parte del Challenge Técnico.

## Tabla de Contenidos

- [pinApp](#pinapp)
  - [Tabla de Contenidos](#tabla-de-contenidos)
  - [Estructura del Proyecto](#estructura-del-proyecto)
  - [Feature Guidelines 🤸‍♀️](#feature-guidelines-️)
    - [pinApp feature structure](#pinapp-feature-structure)
  - [Dependencias](#dependencias)
  - [Configuración Inicial](#configuración-inicial)
  - [Ejecución de la Aplicación](#ejecución-de-la-aplicación)
  - [Recursos Adicionales](#recursos-adicionales)
- [Video de demostración](#video-de-demostración)

## Estructura del Proyecto

La estructura principal del proyecto es la siguiente:

```
pinApp/
├── android/            # Código específico para Android
├── ios/                # Código específico para iOS
├── lib/                # Código fuente principal de la aplicación
│   ├── main.dart       # Punto de entrada de la aplicación
│   ├── pages/          # Vistas o pantallas de la aplicación
│   ├── models/         # Modelos de datos
│   ├── utils/          # Utilidades y helpers
│   └── widgets/        # Widgets reutilizables
├── test/               # Pruebas unitarias y de integración
├── pubspec.yaml        # Archivo de configuración de dependencias
└── README.md           # Documentación del proyecto
```
## Feature Guidelines 🤸‍♀️
### pinApp feature structure
```
├── feature
│   ├── domain
│   │   ├── repositories
│   │   ├── entities
│   │   └── usecase
│   ├── data
│   │   ├── repositories
│   │   ├── models
│   │   └── datasource
│   ├── presentation
│   │   ├── bloc
│   │   ├── valdation
│   │   ├── screens
│   │   └── widget
```
## Dependencias

Las principales dependencias utilizadas en este proyecto son:

- **flutter_bloc**: Implementación de la arquitectura BLoC para la gestión de estados.
- **injectable**: en Flutter es un paquete que simplifica la inyección de dependencias (DI) cuando usas get_it. Su objetivo es generar automáticamente las configuraciones de dependencias, evitando la necesidad de registrar manualmente cada servicio.
- **retrofit**: Retrofit en Flutter es una biblioteca que facilita la integración de servicios RESTful en tu aplicación. Es una forma simplificada de hacer peticiones HTTP y trabajar con APIs. Retrofit se encarga de manejar las llamadas a la red, serializar las respuestas y gestionar los errores, lo que ahorra mucho tiempo y código repetitivo.
- **pigueon**: Pigeon es una herramienta de Flutter que facilita la comunicación entre el código nativo (Kotlin/Java para Android y Swift/Objective-C para iOS) y el código Dart de Flutter. Sirve para generar automáticamente el código de puente (bridge) necesario para interactuar entre ambos entornos, lo que te permite escribir código nativo y llamarlo desde Flutter de manera sencilla.
- **Dio**: Dio en Flutter es una biblioteca popular para realizar peticiones HTTP, que proporciona una serie de características avanzadas que no están presentes en las bibliotecas estándar de Flutter, como http. Dio es muy útil para interactuar con APIs RESTful, manejar solicitudes de red y mejorar la experiencia de desarrollo con peticiones HTTP en aplicaciones Flutter
- **freezed**: Freezed en Flutter es una biblioteca que se utiliza para generar clases inmutables y funcionales con soporte para características como patrones de igualdad, copias profundas, y deserialización de datos. Está diseñada para simplificar la gestión de datos en Flutter y Dart, especialmente cuando trabajas con patrones de arquitectura como BLoC o Provider, donde las clases de estado y eventos suelen ser inmutables.
- **hydrate_bloc**: en Flutter es una extensión para la biblioteca BLoC (Business Logic Component) que facilita la persistencia del estado de una aplicación. Permite guardar y restaurar automáticamente el estado de un BLoC entre sesiones de la aplicación. De esta manera, los estados que gestionas en tu BLoC (como la información cargada desde una API, preferencias del usuario, o cualquier dato relevante) se mantienen después de que la aplicación se cierre y se vuelva a abrir.
- **skeletonizer**: Skeleton en Flutter se refiere a una técnica de diseño de interfaces de usuario que simula la estructura de una pantalla mientras se cargan los datos. En lugar de mostrar una pantalla en blanco o un indicador de carga tradicional (como un "spinning loader"), se muestra un "skeleton screen", que es una representación visual de la interfaz con contornos o bloques que imitan el diseño final de la pantalla. Esto mejora la experiencia del usuario al ofrecer una interfaz más fluida y menos frustrante mientras se obtienen los datos.

Para ver la lista completa de dependencias, consulta el archivo [`pubspec.yaml`](pubspec.yaml).

## Configuración Inicial

Antes de ejecutar la aplicación, asegúrate de tener instalado Flutter y las dependencias necesarias:

1. **Instalar dependencias**:

   ```bash
   flutter pub get
   ```

2. **Generar archivos necesarios** (para freezed e injectable):

   ```bash
    dart  run build_runner build -d
   ```
3. **Preparar las sgtes herramientas**:

- Flutter version: 3.29.0
- JAVA_HOME: 17
- xcode: 16.2
- cocoapods: 1.6.2
- Tener instalado Android Studio y configurado el ANDROID_HOME en la variable de entorno.

## Ejecución de la Aplicación

Para ejecutar la aplicación en un dispositivo o emulador, utiliza:

```bash
flutter run
```

Si deseas ejecutar las pruebas:

```bash
flutter test
```

## Recursos Adicionales

- [Documentación oficial de Flutter](https://docs.flutter.dev)
- [Cookbook de Flutter](https://docs.flutter.dev/cookbook)
- [Ejemplos útiles en Flutter](https://github.com/flutter/samples)



# Video de demostración

![Descripción](player/ios-player.gif)
